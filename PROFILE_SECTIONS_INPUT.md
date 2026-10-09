# Profile Sections Input

Edit data in _data/profile_sections.yml.

Fields:
- projects: title, summary, url, image
- awards: title, year, issuer
- patents: title, status, id, publication_number, year, inventors, application_number, application_date, publication_date, applicant, country, agent, agency, ipc, abstract, url

Notes:
- url can be empty.
- image can be empty, or set as /images/your_file.png.
- Patent entries display their title, English status, and inventors only, without links, dates, or patent numbers.
- Use `Application in progress` for pending applications, including the risk purification patent, and `Authorized` for granted patents.
- Preserve publication dates, numbers, and other supplied metadata in the source data for reference.
- Keep the exact supplied abstract and agency/agent/IPC details in the patent data. These fields are not displayed in the homepage list.
- Keep YAML indentation with 2 spaces.
