package com.spring.SpringCRM.service;

import com.spring.SpringCRM.entities.Customer;

import java.util.List;


public interface CustomerService {
    List<Customer> getCustomers();
    void saveCustomer(Customer theCustomer);
    Customer getCustomer(int theId);
    void deleteCustomer(int theId);
}
