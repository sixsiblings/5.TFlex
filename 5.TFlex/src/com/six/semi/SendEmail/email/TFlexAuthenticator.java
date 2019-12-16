package com.six.semi.SendEmail.email;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class TFlexAuthenticator extends Authenticator {
	
	@Override
    protected PasswordAuthentication getPasswordAuthentication() {
		// 사용자에게 보이는 내용이 아니기 때문에 괜찮습니다.
        return new PasswordAuthentication("cainchel357","illumination79!");
    }

}
