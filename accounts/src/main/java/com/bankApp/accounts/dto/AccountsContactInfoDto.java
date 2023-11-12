package com.bankApp.accounts.dto;

import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.List;
import java.util.Map;

/**
 * Represents contact information for accounts. This class is used to map properties
 * prefixed with "accounts" from the application configuration.
 *
 * @param message           A message related to the account contact information.
 * @param contactDetails    A map containing contact details, where keys represent
 *                          contact types, and values represent corresponding details.
 * @param onCallSupport     A list of strings representing on-call support details.
 *
 * @see org.springframework.boot.context.properties.ConfigurationProperties
 */
@ConfigurationProperties(prefix= "accounts")
public record AccountsContactInfoDto(String message, Map<String, String> contactDetails, List<String> onCallSupport ) {
}
