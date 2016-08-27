package com.school.roles;

import java.util.ArrayList;

import com.school.code.utils.StringUtils;
import com.school.core.School;
import com.school.subjects.Subject;

public interface IPrincipalRole extends ISchoolRoleSet 
{
	/* (non-Javadoc)
	 * @see com.school.roles.ISchoolRoleSet#getName()
	 */
	@Override
	default String getName() {
		// TODO Auto-generated method stub
		return StringUtils.emptyString();
	}
	/* (non-Javadoc)
	 * @see com.school.roles.ISchoolRoleSet#getAddress()
	 */
	@Override
	default String getAddress() {
		// TODO Auto-generated method stub
		return StringUtils.emptyString();
	}
	/* (non-Javadoc)
	 * @see com.school.roles.ISchoolRoleSet#getId()
	 */
	@Override
	default int getId() {
		// TODO Auto-generated method stub
		return 0;
	}
	/* (non-Javadoc)
	 * @see com.school.roles.ISchoolRoleSet#getAadharId()
	 */
	@Override
	default String getAadharId() {
		// TODO Auto-generated method stub
		return StringUtils.emptyString();
	}
	
	public double getExperienceInYears();
	public ArrayList<School> getpreviousWorkedSchools();
	public ArrayList<Subject> getKnownSubjects();
	public String getQualification();
	public String getContactNumber();
	public String getEmailID();

}
