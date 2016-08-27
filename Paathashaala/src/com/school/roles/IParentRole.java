package com.school.roles;

import com.school.code.utils.StringUtils;

public interface IParentRole extends ISchoolRoleSet
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
		
		return 0;
	}
	
	/* (non-Javadoc)
	 * @see com.school.roles.ISchoolRoleSet#getAadharId()
	 */
	@Override
	default String getAadharId() {
		return StringUtils.emptyString();
	}
	
	public double getChildPerfomance(String dateOfBirth,String rollNo);
	public IStudentRole getChildDetails(String dateOfBirth,String rollNo);
	public String getContactNumber();
	public String getEmailID();

}
