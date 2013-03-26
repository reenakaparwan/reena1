package com.hck.web;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.RememberMeAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import com.hck.service.LoginServiceImpl;

	
public class LoginActionT {
	private LoginServiceImpl loginServiceImpl;
	private AuthenticationManager authenticationManager;
	private static final String internalHashKeyForAutomaticLoginAfterRegistration = "magicInternalHashKeyForAutomaticLoginAfterRegistration";

	public LoginActionT(LoginServiceImpl loginServiceImpl,
			AuthenticationManager authenticationManager) {
		this.loginServiceImpl = loginServiceImpl;
		this.authenticationManager = authenticationManager;
	}

	public boolean login(String login, String password) {
		Authentication authentication = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(login,
						password));
		boolean isAuthenticated = isAuthenticated(authentication);
		if (isAuthenticated) {
			SecurityContextHolder.getContext()
					.setAuthentication(authentication);
		}
		return isAuthenticated;
	}

	public boolean login(Long userId) {
		boolean isLoginSuccesfull = false;
		com.hck.model.User user = loginServiceImpl.findByUsername(userId);
		if (user != null) {
		
			final RememberMeAuthenticationToken rememberMeAuthenticationToken = new RememberMeAuthenticationToken(
					internalHashKeyForAutomaticLoginAfterRegistration,
					user, null);
			rememberMeAuthenticationToken.setAuthenticated(true);
			SecurityContextHolder.getContext().setAuthentication(
					rememberMeAuthenticationToken);
			isLoginSuccesfull = true;
		}
		return isLoginSuccesfull;
	}

	public void logout() {
		SecurityContextHolder.getContext().setAuthentication(null);
	}

	public boolean isLoggedIn() {
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		return isAuthenticated(authentication);
	}

	public UserDetails getLoggedUserDetails() {
		UserDetails loggedUserDetails = null;
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		if (isAuthenticated(authentication)) {
			Object principal = authentication.getPrincipal();
			if (principal instanceof UserDetails) {
				loggedUserDetails = ((UserDetails) principal);
			} else {
				try {
					throw new Exception(
							"Expected class of authentication principal is AuthenticationUserDetails. Given: "
									+ principal.getClass());
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return loggedUserDetails;
	}

	private boolean isAuthenticated(Authentication authentication) {
		return authentication != null
				&& !(authentication instanceof AnonymousAuthenticationToken)
				&& authentication.isAuthenticated();
	}

	public com.hck.model.User getLoggedUser() {
		com.hck.model.User loggedUser = null;
		com.hck.model.User userDetails = (com.hck.model.User) getLoggedUserDetails();
		if (userDetails != null) {
			loggedUser = loginServiceImpl.findByUsername(userDetails.getId());
		}
		return loggedUser;
	}
}
