package com.spring.SpringCRM.dao;

import com.spring.SpringCRM.entities.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();
    void saveCustomer(Customer theCustomer);
    Customer getCustomer(int theId);
    void deleteCustomer(int theId);
}
