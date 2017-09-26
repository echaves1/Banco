select employee_id,
       last_name,
       job_id,
       salary,
       commission_pct,
       (salary*12) + (nvl(commission_pct,0)*salary*12) Sal_ann,
       GET_ANUAL_COMP (SALARY, COMMISSION_PCT) Sal_ann_func
from employees
order by 1;

create or replace function GET_ANUAL_COMP
(
V_SAL IN EMPLOYEES.SALARY%TYPE,
V_COMM IN EMPLOYEES.COMMISSION_PCT%TYPE
)
RETURN NUMBER
IS 
BEGIN
  RETURN (V_SAL*12) + (nvl(V_COMM,0)*V_SAL*12);

END GET_ANUAL_COMP;
/

