﻿using School.Model.Models;
namespace School.DataAccess.Services
{
    public interface ISubjectService
    {
        Task<IEnumerable<Subject>> GetAllSubjectsAsync();
        Task<Subject> GetSubjectByIdAsync(int id);
        Task AddSubjectAsync(Subject subject);
        Task UpdateSubjectAsync(Subject subject);
        Task DeleteSubjectAsync(int id);
    }
}