package whitecollar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import whitecollar.model.Employee;
import whitecollar.model.Role;

import java.util.List;
import java.util.Optional;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

    Optional<Employee> findById(Long  id);
    Optional<List<Employee>>  findByRole(Role role);

}