package com.bankApp.accounts.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.List;
import java.util.Map;

/**
 * Represents contact information for accounts. This class is used to map properties
 * prefixed with "accounts" from the application configuration.
 *
 * @see org.springframework.boot.context.properties.ConfigurationProperties
 */
@ConfigurationProperties(prefix= "accounts")
@Getter
@Setter
public class AccountsContactInfoDto{

    private String message;
    private Map<String, String> contactDetails;
    private List<String> onCallSupport;

}
