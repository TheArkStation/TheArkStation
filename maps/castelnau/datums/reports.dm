//Report datums for use with the report editor and other programs.
/*
/datum/computer_file/report/recipient/crew_transfer
	form_name = "CTA-NTF-01"
	title = "��я������ �� �������"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/crew_transfer/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/instruction, "��� ������ - ���� ����� ���������")
	add_field(/datum/report_field/people/from_manifest, "��я (��)")
	add_field(/datum/report_field/people/from_manifest, "��я (��я������)", required = 1)
	add_field(/datum/report_field/date, "���� ���������я")
	add_field(/datum/report_field/time, "����я ���������я")
	add_field(/datum/report_field/simple_text, "������я ���������")
	add_field(/datum/report_field/simple_text, "������������я ���������")
	add_field(/datum/report_field/pencode_text, "������� ��������")
	add_field(/datum/report_field/instruction, "�������� я��я���я ���������������� � ������ ������������� ���������я ��������� �����.")
	add_field(/datum/report_field/signature, "������� ��я�����я")
	hop_fields += add_field(/datum/report_field/signature, "������� ����� ���������")
	hop_fields += add_field(/datum/report_field/number, "���������� ��������� �� ������� ���������")
	hop_fields += add_field(/datum/report_field/number, "���������� ��������� �� ������������� ���������")
	hop_fields += add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/access_modification
	form_name = "AMA-NTF-02"
	title = "��я������ �� ��������� �������"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/access_modification/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/instruction, "��� ������ - ���� ����� ���������")
	add_field(/datum/report_field/people/from_manifest, "��я (��)")
	add_field(/datum/report_field/people/from_manifest, "��я (��я������)", required = 1)
	add_field(/datum/report_field/date, "���� ���������я")
	add_field(/datum/report_field/time, "����я ���������я")
	add_field(/datum/report_field/simple_text, "������я ���������")
	add_field(/datum/report_field/simple_text, "������������� ������")
	add_field(/datum/report_field/pencode_text, "������� ���������я �������")
	add_field(/datum/report_field/simple_text, "���� ���������я �������")
	add_field(/datum/report_field/instruction, "�������� ���������я ���������������� � ������ ������������� ���������я ��������� �����.")
	add_field(/datum/report_field/signature, "������� ��я�����я")
	hop_fields += add_field(/datum/report_field/signature, "������� ����� ���������")
	hop_fields += add_field(/datum/report_field/number, "���������� ��������� � ��������������� ��������")
	hop_fields += add_field(/datum/report_field/options/yes_no, "��������")
	for(var/datum/report_field/field in hop_fields)
		field.set_access()

/datum/computer_file/report/recipient/borging
	form_name = "CC-NTF-09"
	title = "�������� �� ��������������"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/borging/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/instruction, "��� ������ - ���� ����� ���������")
	add_field(/datum/report_field/people/from_manifest, "��я (��)")
	add_field(/datum/report_field/people/from_manifest, "��я (�������)", required = 1)
	add_field(/datum/report_field/date, "���� ���������я")
	add_field(/datum/report_field/time, "����я ���������я")
	add_field(/datum/report_field/instruction, "�, ����������������я, �����я��� ���������� �� ����������� ������ ��������� � ����� �������������� ��� �������я��� � ��. � ���������� ��� ���� ������ ������ �������я. � ����� �������, ��� ��� �������я ����� ���� �����������, � ��� �������� �������� � NanoTrasen ����� �����������.")
	add_field(/datum/report_field/signature, "������� ��������")
	hop_fields += add_field(/datum/report_field/signature, "������� ����� ���������")
	hop_fields += add_field(/datum/report_field/options/yes_no, "��������")
	for(var/datum/report_field/field in hop_fields)
		field.set_access()

/datum/computer_file/report/recipient/sec
	logo = "\[logo\]"

/datum/computer_file/report/recipient/sec/New()
	..()

/datum/computer_file/report/recipient/sec/investigation
	form_name = "NT-SEC-43"
	title = "������ � �������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/investigation/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "����������� ������ ��� ������")
	add_field(/datum/report_field/instruction, "������ ��я ����������� ������������я.")
	add_field(/datum/report_field/people/from_manifest, "��я")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����я")
	add_field(/datum/report_field/simple_text, "�������� ����")
	add_field(/datum/report_field/pencode_text, "����������")
	add_field(/datum/report_field/pencode_text, "���������я")
	add_field(/datum/report_field/signature, "�������")

/datum/computer_file/report/recipient/sec/incident
	form_name = "NT-SEC-12"
	title = "������ �� ���������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/incident/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "����������� ������ ��� ������")
	add_field(/datum/report_field/instruction, "������я���я �������� ��� ����������, ������������� �� ��������. ������ ���� ��������� � ���������������� �� ����� �����!")
	add_field(/datum/report_field/people/from_manifest, "������������� ������")
	add_field(/datum/report_field/simple_text, "��� ���������/�����������я")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����я ���������")
	add_field(/datum/report_field/people/list_from_manifest, "������(�), ������я��� �����")
	add_field(/datum/report_field/simple_text, "Location")
	add_field(/datum/report_field/pencode_text, "�������� ����������� � ��������", "\[small\]\[i\](�-������, ���-�������������, �-���������, ���-��������� ��� �����, �-������������, �-�������������, ���-��������)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "�������� ���������/�������������", "\[small\]\[i\](���-����������, �-��������������, ���-�����я��, �-�������, �-��������)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "��������� ������")
	add_field(/datum/report_field/signature, "������� �������������� �������")

/datum/computer_file/report/recipient/sec/evidence
	form_name = "NT-SEC-02b"
	title = "����� ������������� � �������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/evidence/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "����������� ������ ��� ������")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����я")
	add_field(/datum/report_field/people/from_manifest, "������������ �")
	add_field(/datum/report_field/pencode_text, "������ ���������, ��я��� �� ��������")

//Supply and Exploration; these are not shown in deck manager.

/datum/computer_file/report/recipient/docked
	logo = "\[logo\]"
	form_name = "NT-SUP-12"
	title = "������ � ��������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()

/datum/computer_file/report/recipient/docked/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "����������� ��������я � ������������� ������ ��� ������")
	add_field(/datum/report_field/instruction, "����я ���������я")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/simple_text, "�������� �����")
	add_field(/datum/report_field/simple_text, "�����/�������� �����")
	add_field(/datum/report_field/simple_text, "��� ��я��������� �����")
	add_field(/datum/report_field/people/from_manifest, "�������� ������������")
	add_field(/datum/report_field/instruction, "����я ���������я � �����")
	add_field(/datum/report_field/pencode_text, "������ ����� ����� �� �����")
	add_field(/datum/report_field/instruction, "���������я �� ������� �����")
	add_field(/datum/report_field/options/yes_no, "������")
	add_field(/datum/report_field/options/yes_no, "����� ����")
	add_field(/datum/report_field/options/yes_no, "������������ ������� ���������")
	add_field(/datum/report_field/options/yes_no, "���������я ��� ������������я ���������")
	add_field(/datum/report_field/signature, "����������я ����� �� �����")
	add_field(/datum/report_field/instruction, "���������� � �����������")
	add_field(/datum/report_field/time, "����я ����������")
	add_field(/datum/report_field/pencode_text, "�������������� ����������� �� ����������")

/datum/computer_file/report/recipient/fauna
	logo = "\[logo\]"
	form_name = "NT-EXP-19f"
	title = "������ �� ������������ �����"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()

/datum/computer_file/report/recipient/fauna/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "�������������� ����������� ��� ������")
	add_field(/datum/report_field/instruction, "��������я ����� ������ ���� ��������� ������� �������������� ������� ����� �������я � �������я ����� ����� ������������ �����.")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������")
	add_field(/datum/report_field/pencode_text, "�������я/���������")
	add_field(/datum/report_field/pencode_text, "������ �����������я")
	add_field(/datum/report_field/pencode_text, "������")
	add_field(/datum/report_field/pencode_text, "�����")
	add_field(/datum/report_field/simple_text, "������� ������������я")
	add_field(/datum/report_field/pencode_text, "���������")
	add_field(/datum/report_field/pencode_text, "�������� ��������я/�������")
	add_field(/datum/report_field/pencode_text, "������ ��������������")
	add_field(/datum/report_field/pencode_text, "������������я")
	add_field(/datum/report_field/instruction, "�� ���������� � ��������� ������ �����, �������� ������������ ������ ��������� �� �� ����� � ������ ���������� ���, � ��������, � ����� ��������� ����� � ����� ����� ������� � ������� ��������� �� ���������я�.")

//NT reports, mostly for liason but can be used by any NT personnel.

/datum/computer_file/report/recipient/nt
	logo = "\[logo\]"

/datum/computer_file/report/recipient/nt/proc/add_header()
	add_field(/datum/report_field/simple_text, "�����", "��� ������")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����я")
	add_field(/datum/report_field/simple_text, "�����")

/datum/computer_file/report/recipient/nt/anomaly
	form_name = "NT-1546"
	title = "����� �� ������� ������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/anomaly/New()
	..()

/datum/computer_file/report/recipient/nt/anomaly/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "������� �������� �������")
	add_field(/datum/report_field/people/from_manifest, "�������������я ������")
	add_field(/datum/report_field/people/from_manifest, "������я���� �������� ������������")
	add_field(/datum/report_field/pencode_text, "��������� ���������я")
	add_field(/datum/report_field/pencode_text, "����� ��������")
	add_field(/datum/report_field/simple_text, "��������� ������� �������")
	add_field(/datum/report_field/simple_text, "������� ��������� �������")

/datum/computer_file/report/recipient/nt/fire
	form_name = "NT-0102"
	title = "����� ����������я ��������� ��������� NT"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/fire/New()
	..()

/datum/computer_file/report/recipient/nt/fire/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "������ � ������� ��������� ��������")
	add_field(/datum/report_field/people/from_manifest, "��я")
	add_field(/datum/report_field/number, "�������")
	add_field(/datum/report_field/simple_text, "���������")
	add_field(/datum/report_field/pencode_text, "������� ���������я")
	add_field(/datum/report_field/signature, "������������")
	add_field(/datum/report_field/instruction, "����������, ���������� ������ ���� ���������� � ���� ������ � ������� ��������� ���������.")

/datum/computer_file/report/recipient/nt/incident/New()
	..()

/datum/computer_file/report/recipient/nt/incident/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/pencode_text, "������ �� ���������")
	add_field(/datum/report_field/pencode_text, "����������� ���������")

/datum/computer_file/report/recipient/nt/incident/proc/add_signatures()
	add_field(/datum/report_field/signature, "������� ������������ ����")
	add_field(/datum/report_field/signature, "������� ��������я")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/incident/ship
	form_name = "NT-3203"
	title = "������ �� ��������� �� ����� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/ship/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "����������� ������������")
	add_signatures()


/datum/computer_file/report/recipient/nt/incident/personnel
	form_name = "NT-3205"
	title = "������ �� ��������� � ���������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/personnel/generate_fields()
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/asset
	form_name = "NT-3201"
	title = "������ �� ��������� � �������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/asset/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "������ ����������� NanoTrasen")
	add_field(/datum/report_field/pencode_text, "������ ������� NanoTrasen")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/xeno
	form_name = "NT-3213"
	title = "������ �� ��������� � ����������-��-������ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/xeno/generate_fields()
	add_field(/datum/report_field/instruction, "���� � ���������� ��-�������� ����������� ������я ����, ����������� ����� NT-3213A.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������-��-����")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/xeno_no_visa/
	form_name = "NT-3213A"
	title = "������ �� ��������� � ����������-��-������ NanoTrasen: ���������� ����"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/xeno_no_visa/generate_fields()
	add_field(/datum/report_field/instruction, "���� ������я ���� ���������� ��-�������� �������, ����������� NT-3213.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������-��-����")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/synth
	form_name = "NT-3213X"
	title = "������ �� ��������� � ����������-����������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/synth/generate_fields()
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������-���������")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/crew
	form_name = "NT-3241"
	title = "������ �� ��������� � ������ � ���������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/crew/generate_fields()
	add_field(/datum/report_field/instruction, "��я ������������������ ����������, ���������� � ���я � �������, � ��������.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������")
	add_signatures()

/datum/computer_file/report/recipient/nt/volunteer
	form_name = "NT-1443"
	title = "����� �����������-��������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/volunteer/generate_fields()
	..()
	var/list/temp_fields = list()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "��я ���������")
	add_field(/datum/report_field/simple_text, "����������� ���������")
	add_field(/datum/report_field/simple_text, "����������я ��я ���������: (���� ����)")
	add_field(/datum/report_field/people/list_from_manifest, "������������� �������������")
	add_field(/datum/report_field/instruction, "���������я �����, \"��������\" �����������я �� ��������������� NanoTrasen � �� ����������� �� ����� ������, ������я, ������ ������������� � ������ ����������я, ������� ����� ����� ����������� ����������� ���������. � ������ ���������я �������������� NanoTrasen, ����� ��� �������� ������������, ����� ��������я �����������. ����� ��������я ���������� ������ ����� ��������������� ������.")
	add_field(/datum/report_field/signature, "������� ���������")
	temp_fields += add_field(/datum/report_field/signature, "������� ������������я NanoTrasen")
	temp_fields += add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/deny
	form_name = "NT-1443D"
	title = "Rejection of Test Subject Volunteer Notice"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/deny/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "��������� ��я������, � ���������� �������� ���, ��� ���� ��я������ �� ������������ � �������� ����������� � ���������� NanoTrasen ���� ����������. �� ���������� ��� �� �������, ���я������� � �������� � �������� ���������. � ���������� �� ������� �������� ������ ��я�����я. � ���������,")
	add_field(/datum/report_field/signature, "������� ������������я NanoTrasen")
	add_field(/datum/report_field/people/from_manifest, "��я ���������")
	add_field(/datum/report_field/instruction, "������� ������")
	add_field(/datum/report_field/options/yes_no, "���������я �������������")
	add_field(/datum/report_field/options/yes_no, "��������������я �������������")
	add_field(/datum/report_field/options/yes_no, "������ �������")
	add_field(/datum/report_field/simple_text, "������")
	add_field(/datum/report_field/options/yes_no, "����� �������")

/datum/computer_file/report/recipient/nt/memo/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "����")
	add_field(/datum/report_field/pencode_text, "�����")
	add_field(/datum/report_field/signature, "������������")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/memo/internal
	form_name = "NT-0003"
	title = "�������"
	available_on_ntnet = 1

//No access restrictions for easier use.
/datum/computer_file/report/recipient/nt/sales
	form_name = "NT-2192"
	title = "�������� �������� � ��������я NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/sales/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "���������я � ��������")
	add_field(/datum/report_field/simple_text, "�������� ��������")
	add_field(/datum/report_field/simple_text, "��� ��������")
	add_field(/datum/report_field/number, "��������� ����� ������� �������� (�)")
	add_field(/datum/report_field/number, "����������� ���������� ��������")
	add_field(/datum/report_field/number, "����я ��������� (�)")
	add_field(/datum/report_field/instruction, "���������я � ��������")
	add_field(/datum/report_field/instruction, "���������� �� ����� ����� �� ������� ��������� ������ �������� � ����� �� ����������� � �������, �� ����� �����я�� ������� �� ����� �� �������, ��� ������ ��������� � ��������� (�� �������). �������� ����������я ������� ��� �� ���� �����я��� ��я ������� ��� ������ ���������, ��я������ � ���������������� ������ ��� ������������ �������, �� �� �����, ������������ ��� �������������, � ����� ���������я �� �������������� ������.")
	add_field(/datum/report_field/people/from_manifest, "��я")
	add_field(/datum/report_field/signature, "�������")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/payout
	form_name = "NT-3310"
	title = "����������я ������� ���������� ������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/payout/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "�����я��� �������� ���������� ������� ���������я ����� ��������,")
	add_field(/datum/report_field/pencode_text, "� ����� ��������� ������� ���������: (���������, ���������� �������),")
	add_field(/datum/report_field/pencode_text, "������я ������ ����")
	add_field(/datum/report_field/instruction, "��������� � ��������� ���������� ������������ ���������� ��� ��������.")
	add_field(/datum/report_field/signature, "�������")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/audit
	form_name = "NT-IAA-12"
	title = "����� ������������ ��� ������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/audit/generate_fields()
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����я")
	add_field(/datum/report_field/simple_text, "����� ������������")
	add_field(/datum/report_field/pencode_text, "������������� ���������я")
	add_field(/datum/report_field/pencode_text, "������������� ���������я")
	add_field(/datum/report_field/pencode_text, "������ �������")
	add_field(/datum/report_field/signature, "�������")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/anomaly/New()
	..()
*/
