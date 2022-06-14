<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
    .main_div{
  border: 1px solid #082B48;
  border-radius: 20px;
  margin-left: 10%;
  margin-right: 10%;
}

.main .middle-list-item {
  text-align: center;
  padding-top: 18px;
  font-weight: bold;
  font-size: 20px;
  display: flex;
  justify-content: flex-start;
  align-items: flex-start;
  flex-direction: row;
}

.main .real-upload{
  display: none;
}

.main .upload{
  width: 100px;
  height: 100px;
}

.main .recipse_title{
  font-weight: bold;
  font-size: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
  /* margin-bottom: 30px; */
}

.main .middle-list-item_ingredients{
  font-weight: bold;
  font-size: 20px;
  align-items: flex-start;
  margin-bottom: 50px;
}

.main .user_profile{
  justify-content: center;
  align-items: center;
  flex-direction: row;
}

.main .user_profile_cam{
  width: 80px;
  height: 80px;
}

.main .user_profile{
  border: 2px solid #082B48;
  margin-left: 30%;
  margin-right: 30%;
  margin-top: 10px;
}

.recipse_main{
  border: 1px solid #082B48;
  margin-top: 5px;
  margin-left: 20%;
  margin-right: 20%;
  margin-bottom: 5px;
}

.user_profile_cam{
  border: 2px solid gray;
  border-radius: 15px;
  margin: 4px;
  float: left;
}

.user_name{
  border: 1px solid gray;
  margin: 5px;
  text-align: center;
  border-radius: 15px;
  width: 70%;
  transform: translateX(40%);
}

.user_views{
  border: 1px solid gray;
  margin: 5px;
  text-align: center;
  border-radius: 15px;
  width: 70%;
  transform: translateX(40%);
}

.user_update{
  border: 1px solid gray;
  margin: 5px;
  text-align: center;
  border-radius: 15px;
  width: 70%;
  transform: translateX(40%);
}

.li_main{
  font-size: 15px;
  align-items: center;
}
</style>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- ===============head include=============== -->
<jsp:include page="headInclude.jsp" flush="true" />

</head>

<body>

	<!-- ===============header include=============== -->
	<jsp:include page="headerInclude.jsp" flush="true" />


	<!--=============== 한식~중식 선택 ===============-->

	<jsp:include page="selectInclude.jsp" flush="true" />
	
	<!--=============== 본문내용 ===============-->
    <section class="main">
        <div class="main_div">
            <div class="user_profile">
                <div class="user_profile_img" title="유저이미지">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAABQVBMVEX/0NH///8AAACdnZ1tbW3/xticnJxubm7/09SZmZn/2dqgoKBqamr/1dZxcXGkpKSDg4N5eXmPj4+Li4t4eHiAgIDu7u739/fi4uJBQUFJSUnCwsJbW1v5+flkZGTT09Ozs7PS0tJPT080NDQoKCjd3d08PDxeXl4xMTEiIiK5ubmsrKz0x8hNTU0VFRXIyMjOqKnetbaoiYruwwARDg6Da2wlJSWQdXZvWlu3lZZPQUGhg4Q7MDDRqqviuLlyXV5aSkrer75HOjrwvc3BngBOQAAxKAAnIACmiADkuwDCrLPRrABsX2PJnKqBZG0hGhxlT1a+mKSnhI+rk5vguMRDOhJsWQAnGQCjkVbDnwCujwBfTgAdGAD2ygCOdAB+aAD/7PL/wtaVb3vBrWP/2ukGFRLwzEJRTUKcjJFlVhijjDLc4bSwAAAbIklEQVR4nO1dB3vjRpIVGhTAJkBkgDmKSSRFKlBpFCbIacb2jsce763Xa/vO573bu///A66qG4kkKEoa6kbjD+9zkCiRAh4rvKqubm5tpUiRIkWKFClSpEiRIkWKFClSpEiRIkWKFClSpEiRIkWKFClSpEiRIkWKFCn+tMhmP/YVfDLIbu1f5XP5lLC7YDwjhDw/vP5gvrLZfD6fy+XgqxxD/k/3DuSPCceLw3HuwTcHLGWv988vjl+85a82u3x2dnyxP/5zmWzuLel88+1f2D0+28/lH/AS2dzW/vElScTb4/0t/qJodz4+2SCZm5FBdXt7+9u/oDte3p+ufG7/LKBmsFPaqzK0y+Xezm5ks7n89fnFxeHF8fHp4fnV9Xjrk/TSXIcMyjfbiJffcbrucQ/Z3PgCSSa9umspuq6LlFqmjNAQ9XKH8XV2vGRzz44Prz41L809I53ey22OG7SRy6u70gVUMRJ2HFFXFDGAraoZH8CZXO1xdqpqvdpX6/29Xidk7PL0Kvcg1/84yJ2Rk9677QA3aF3PDu5EV+6a+V+V6hFRCMly5YivDNhYldHTV4BSBe1PMdR+uzRgNkmOP500kD8lu73vtyMwZzwb59Y+cQutaqIpC1QhFJEaTibOV52ZVz2wP8VADjW1veMb2MEnYV/5QzIpfbMdx8tn+H5v3X71uX2kqm7YrmlJVFrmS6GWq4UGBtT0UVGYOv+xpfleqtX3mIHdL1Z+JGThpkul7Xl8i0LgMLuarvwYPbCtyfyWZWOZLSRMQr4C89IspGvH4nTZckCjqViZ3r1i5cfDGFLZzssFtra/x3f7cMXVZ3MXqBMyWiYiwqYiGBhN4MsM6TKNEvoiY4vK0XMhjtEqaoz1zv+RgUKr969FsrZvvoGrP0l8s/PjV+CBVS28XYCqaqYDqc8FE1uwMiliS3Y10F4DCpGLGmrAFXNinZbhD54+cb2ae052S/Ulsra3f9hJfrPzB/B4eY6qCLJrao5jzbNlx3zRaMOzbQVzphOwxX9NNyfwHhw8aePKn5NZqfQ+ga39eich0uchyM3qWiJVQBb3t0VftOWQLteAF8U4DxnRZ8t3XmoikRf5J5wXs2Aopd4PCWRtv9Sq8GaT87gMyl8R0pGTzSpmXwtyQqFuaFuUgiuqOopX/oAdRDqqqfCj2f5TNi5IUSUniSxgS2uzDs5Bzg9eyNVAy6wyrIAsx3Td+WCv2KEjigokvypURq7K3TAIcpKT0TByHT9dtnKXZFDqJ/khhHmTXz7wdQWV71b2GszQ0QxTDjxuFVTVUFCdhqAhkybVIfeVdVEy5twQUgF8k4FQ+fzJssUi/F6iHyJbqia3Wftght2WGZiERSk1DMuWndsMDLKj5phRZqR29CNLN0GwhJ4YsMW0l4zvzpO1LdDws1LZTSZr+8bB61fbvPh9S9oK3L+OUKhCTcMGwbCaM41GBbZiOWr0sAW1oi6a/HuXG5Yf15Ct0yfKVvYKNbya7Ifb20Fd4mq9sFkwmUEk65TrNtSF1KLwK+qClPC/dRzTtEPripKiAdUQ5kQuthw/aoXSq4RZ5WPzsgIY4fsr/NANrMHRLblfPplvSg0MpMvWHMOihm0Zmm8qWq+u+SlTzUSqC0yRv5wDFge2pUrM2ExK/WwYUA3vy9XTVBC5V6RTqho3SVy9q4fGQqkqy44FsafdblerToY1XnrgjJQqkiQpigTEuZpmmhl50i+36xqzL1QGUaC3uEDVbMiPEOSpww2N/zBQXqY1IGT8JMV8/pRMSm0twQ9vlCgcybak4U0qVMNGqAvkNLt1oEsF39JMMC1OCdAmWYZhqEDlTpXzpbkxPc8ZgZyoYCvHiUX4wLKgAgInffYkHRGDVm9PXfbD95IV9aQyNjLnWIrFow4VaUsQupAoq8iHCoyF0opahio7Kga5EtNkmgUVYBC7fFfUsERUGFnuIlkg759qSsxhtFbtJa6oyK5eZelOdZEsMBHLp04aeQKghLYVGB93J4n3sSCJYpehp2ICgEdka84TeVHI3g6Dk2U4gRdCwlUhyD/FsAV+OCvXzQU/fEP5naiGzfopmsTJkjQec+i0gGQJYD9BSexSzpYTuK6WYXT5it/wfxyEeddPgTJn2fI5d1i810FAjD82Mwlg5WFf0+e40iEGoWY0qSixLzKoKh2Jk2VSqckMCzAhExpkQW48VuS8pr2HbULTlxKGxRUVY8v2axwglcae5ZfhyuxpKvk8iIB6hsZM60bHCIO0cGvQ0Dl4dEEDkCEEtXyuBA9rF58tmcbJUtECdUxtkz43LlXlrmpzycDsTOZBiwb2yB8WFVD51x+cEXFtd7NpFSuefsYexdIgciXBzfG3GU1Lg/irgjG4zFOkYSEgS5gS4vqFi8XJ8h3KttCjqIht0JLhYnkk2zxpovfZfgwDBqWIYTfot+od8uoDTSufvzq/uIAybYN8QcUDOc1RAtN6z7udiqYGxR1GLwvIMhQevyxxpEdsOYT43SlmFTSQ88znqAMJAKrjmaHjq6gyz322HLJCM9jS8RvNWqj4QYh9WIzPb1344vl4vLlcgc0EEADWGyZMb974N6G4aqC+qQpWBWKT8vAFClykXkiWAIUe7yqg6YX9dd6oYoJAQ+NqK4aMeVEbUUlUdBpwdeLaop84AtvkptUm5EO4ukKeymqVrydsjK3chJRlyE76DXIV6m3JCS/cVF1QBBBwGFmWBMqhFpE1IoQ6nEXIAC4ny+AlHw/+sgyRaxfkvmW4VqUITCgVqMVBw4p0Zut64LvO3LLah3RrsKVLRuzyKp1Nqrb8MdnRWHR+/ya+aBr70qKKqfoZ0sCb7Aox7JI+EwyqEXZAHa5CJT/0ZzRsGjs6o8cThrXhcFob0iF4vE5nA0tx/YgV4wpj/MEDww0uFZTD63M3aFsQtIAsrNES1kv5dSu4zCyihlIx6EiVQpwsHaIWkoQ9YstvUgVJLVARWn2CfZnWVKK6INSERrEgVFrCSKJQUxOXeaFLIy+EmpPuPjTGZ3GJL3aBxiZSKwd3w6hnuUQVxCyXzTRQVUW97cv3eNRykST0Iq4B/HJQcmOrixQkag88ozWqsCcB312hVigq9owQOfYsZtR2RtOg+Nx/0MzY1oxM5i6w9MGp1Qe691z5vwjKGzKmokgOrvNJulebJ0sjJd1VVReVArIWGJYRVpemY9NRBiTXFH69FTgxe5nCCGxrR+OFDmNKEl22VKYNyOQhBpG/JGT+7SxuqiDIXZI2xbvSkp1Qh+D8I2stW6zzKSnFBcMSWoRIzQoIdGVKRaOu+kktWku1LfBjEfvJM3xuMXgiZ0vXCKljA4jHR8Pyk4Ss4uLY/W/oBYQFb/4aHx7+5oDzDjar/319veiEcCd/Pzr66a/B+qjSXeQKr8WoCAVKuwKVlGmXv06gTtHQJOzeiE1QsCeFpWcXxR6ZWArlocqMJpa0h5SIILKJq9C5FCTMyP4myML1HVthcVlLjFiE/NvR69evj77+EuwH0ld3+W6hnlZbkKSpIDQh2XnxRrHpmtihUZoQ0mvoD7u1pad3LZxIYkFOnmtRa/fO+tn8GSEapN1hIR4sOg+LfosvfoBdFkvE6jbJtBQZ/f9vPyFfEKAVPcGuBMEmpQZYSFPADCdM0Y64zsCFQUWio5ZX4JeezJYH2pH1HpzMHOTqPfNYfgzxqo1vFhVHc6a/CcsCoz3RMtgCzQSV8GLEsgVBIj9+dvT6M0LEpXjFMCS7YPYe/NuoCbUmpc2RhEMhhg2hnuohVWhFhHSWXwAezSiiYqhzXGmGdb8SMXfAhqFYqpL0YvSubEY7jLHW0cCkmCOaS2RBKoRMj0XDV0dHX5DR8n369wqWVQAi4Z+uKHpCF3hvYsiWaCVGFaCRyJZMJiDkzThTsmuIEpSI+3cdpORTrnXNHyCQpGbRd0XIQBvwwvwFmYF612w/xCw6ogJlsoydBYJh/mciJZPlEQKaoFZg+a0CXAlTSluKQkdNpVhbcLthXF3HKDSUUMNqJiRQSwKzxDbgq1Ocp19DWDY3PkWFgzHPL9fhjRrpU/zrLjnbgM6C8F7WWFUmsrC1qEyVarT09eMvvxErmSyB2Z/AQn9h1IL/TGlrWhh2i8WEXwZrVZceLJE9HWedZdmVHdbiCk0b8eLiILuasKw/kD9xdLb2rZoubwFJvDJ7oLpd+CPXqHCQLCxmkK0FZYoiK8TRX1eSNSGV4MsCFtnghzxrJqROQQD9RBcfG2GIVwzbBYuyYnUPSpd+m/39Z6f7Y7bfYI4zICp3cMqWf2U9WDLKqI7/EpJYwHpsE154Sk74i8vAEuYveSG+z+Jkfb4qZglt0gy/LjJnLCRmAh87zG3nUEN1JLIVsoVL6JGZortt/0penJ5fjcdb+ZyP/PX5c/ajQZV38/0kITuaxd54WvQepG2XkJsR1e8TmCjAqaPGB/ckica4+scvy7cY2Yqy8EiiSYU/JIsFCb5EWxcTZDEuI3ZU0xpZcnkSu5zLs+dnz4JdQ502JATerIzNoPDQJXXI202ILFDvNFiOUXEtT7GBLNZ8AKKoPqzEru6rrwlZRYG70kGTAfF8sPDQkOVDfb7mAo90ZD9u7pnSSDLU8u78FAE5aff79bqqabwBR91I18ompIjSZnQDVFFlPWhBQQ7hViUV4d2UlFEFok4xuqYvjn5NyGIPJEuAwsCdf6SIb5w0mmeLmQlOP8g2i0ptzdJHIyiKbMNR+3XcetALyBv0/dU2y47mx1Qchd6Ieh+zci82PMWaVVZDmDZ88emFXH2JCn5VyBKc5Yi9BtUln0bxIOnNGFmGza1eA/drCS3Xd7lyVZXVer9d3om7JULWfXt0g+aQA3/nYhPtmfwh2WWvHk7L4Bpns+HN3cFPv31BvvgZJOlvhKy89dZJd+XPVoAsOnWbqLouVqJgZQVDSnKdkB3US8WRvEAPFLYVptS9ignf7QQ5lJckbIBpMz1l8MI+I8tycPiFvbi9cNMq+fWXI8Dro89IJA+WMDTuyxWq6urcAxapNypSK9xj5kQlNS55mP6veVPRBA9UZYNCpJgTvJAKdsNohytOTmljo3F5EFmuYVgKDg65tqFpmkUXCJlincOaDlB0rb7z7nDu20ZZv005cIAlzD0LIrxQpLWROOJrcfGiWtsjMXGyCk2wrZIe0KXJ2s7GuMKGA49ULsXtbRIFMTiaLpgWvDc//3QEwZ3srr3YEDVQks7a34JbixuGh34J8ZIW2QCT4saqascu3RIx+dPBrqotptYCtiYbildbrC7cDeZ8WCIEwhLCNEYJVH27620lBhxHWiXKAoAu0eLf82cUdaFJ0TzYPk8n45igoCxR2kmQ/TFAMp2MMGz0uGkpOs6PbWysHurCUrCgoOJcqOMYzQQh1cDpjntnO/Qyd82v9FmzIkSdP6EoeNIQPdEyNBeHACjbp6d0MCWuRGHEXqqLHUrU/RaY1eXG1qJxjK0e5BuVM+aIiaqzMJ0uN+zWYkhI71Ydj0J+Z/4J/ldeg+oSSGQqgnRiEhkJmKwWxRHQD/2NZqs2tj0AuWPSo6btaqbm4v8ckMCUDtdezd1RTChq5qHMZVgv+vUGbdDF0gdnnGfIViFY8igk9DT2CMRgpGpzZoWAbAxvHm4UxCYwrhVLmyVLqIHnJPVoIuzOpY0J0f2vvCkEemVhuQlnnHcr02HTG2FQKFRw/bKx8HaUSQknNE/ONzw8M9C5fovGG9Zn53uis8a2WnOmpcRlb42ORrE9xRLO1QFbHYWOqNRt6XpTbzVblYUAofMi+2EneqwElDoaHsRg2bZtBdMriyqLofCAeBXe8eQW2Y+ozq0dQ8UTfdOddruVJm6SxStrQBgTJah49nRJGupQIEs6Heoj1sn2/1iDN0lebZgqPKWA4ICZ6iMYsE7ymvVRdTW8RZ2+/HPqL7bCXUOIj8k8z4OHmnRYoczovZHQHal8oYvZmj6UpG536tU4XfBkUu6Ry7udtXAPoCCtxlboVH+aWLpd+D0AjTVi0oCwVuNsQe3SW17M0CvCSJIkWhNw9aGbgTfZtUxs7WJMoxTUaHHKZINXxPy6+THn/NtQkKoZzTGiPZL3LojXwb494dcIsTyB0dXVsWBZ7PV4YFNF2sTBe0Yp5AQtWi2g0yJV9GEQKarkcuNzuyAbSDucIaaSFMVRXdg0dud1+iIorjli2742pc2GOueInC38t1IbBfZH2BqLGYRZHN0phK+1mZmGOHBwZsAXKmy60PLGd3CzmN6eEQssarW8oaCIELEH5CTpt8DDgguz2E4FM9otK027Lcaj9gjb77DpN2ljI9mgS/NrkpKY/Fb2SO+AARFv+7FGBkWcahs2JfjrNKlKYkYVDsZ0SAf3bZiRaqWoebzBY2xVhKKQlPqq7FpJo36JplW8XQDcDoXsxe97EeBXFlvuZ0aOy7or+mYBWS2WnORoMyPFScTpJuvmiCsIWL22atpW4qxfUtT6493dLavRWnyk5Wut2tDFDSoQoEdzCqVEqnz0XoN6kK1B3y77IYyz7BSsCEu6J7Sgwnm70QKHIX/ONqK69qqxyGWttb397ps/wu+Kt4pUCEHtBcuoYdBuGZ14N7gaC2NDPkKD7Tq2t253XUlZ5LrHX6WHshkPuiFnmz9xBBehd0ttJ9msuFELOBETXe+//8f2u4ttToU0mG+rLINduNuKceX1CN81PDGaXc8rTi3c1G9HvwFCE9nCaXrUe3S2jq0qjv7wXdg61djRUmePcdxI9i0eEuKsGkwWmTDtMnfR/O7dHzgfzywLFKS7VohN+TrfoF2tq+2dcEm7PoxZLBs1CQ3Q5h07CfOzi+2F2ZpmDIS5Pp6U5/pHmXU+5DTM1cAyp1fSWMWlJE/cSjr2sv/BnIVdGnD1+zc/1FCML647J8MbteeXYKrWQtfUIs1JVAjCC7O/jLvr8CwbTIkJI28cBaOL6/+DXsdfCJs91mlleJ7ToKfaovTmZvtNsmXhRtL+fx4dvf7753wB6o/f/9lsWCRD9u5eJRamTV3HNe1pK8GjikRmZlr3v/c753yPgSmxZsxklScaYJJ9/12YbOJE2lVcQXA/KfUNkW/UWUHWDNdx/guXdD5na9C6yY3hnovOq1HkI/3DsAev8jU5Pp+F05qsK7wqNtZJUSWvTg/PD3Co5rG2nqNyn/Sqrv4+2ACWxFWdRZP//oqPkYL/VCx2Z6vq4ft3cKZ+Qx/Y4tNxOhmwv22peG6nrVtqCWPdqtKL7Mjk4pHPOsVEOClVzTfRjtWEMI/tsy62Tr78+vXRb+GsX7jIuQiv8BC+BJ8kXgk2sGuLJ5HY9Xq17M+EAV3thWl2OXzaY++hzuKx0709I7Zn9f0yWwpOFFTZOQRf4nKhH4S7K9MTLgpjnrvXSlmAOh+mAXFW2ivvRPMxHZxbu1hcVCqSkn8xj76FGndp9Nr/mjvv4g0ni9qRYZWjJPbZ0VdBVGmuXI5GAQBkTW9XXytQ8Je34qnz2ek5P7w0d43jV/FWd4vP8RQf/bwa3HmwU343fzbIjW9NasRW7LK/AsvyyWqt6ncWhnzKb7imRFmBXS5OB+Ti4Gp//wDsBQch/UvOYkKasy7Kvmk8QidmDrzKebd4dOR7XHFyM+HAH+7yC/E1xKzgSlctLzcq2IoSCvqDms9lf3K5Ss5zWcTiVWfZ5t0o0rNf3yUvHtWweHBf4oqd4CCpGZnPYsx74ec4+b5ubaw5ZV5YfEg/2tsB8caK7Do5XBGw81vnmBg1Xjh0IcZ3O48dsaDKIUlcbd/ouF/AwUkMy5UwF/76s88VGzNaYzAenQo1CFeV+y84ejYEpBr/C6vJwl30h6x8EhsoSA0spg4eNRXitrKdJK7wZALcQAfFj6WpFm56Pzr66defP//tp89++3xuaSoRUyi7u6A0dIzv91EQWFJpHob24hqy2LHzL2LR4WzzrZg5rrDK+T6RKwhbhgoxCymD/2pgWa9xeu1XVgGX1giCgiRarjYEzjyuuO6MWoM7Fhfq/TW6KZsbH3K+Lk+vHzcR4lRyZxVXwBYuluBBAqaosF0C//O/fwOqqsP10mmIxxeoqqTTGvPG+4PL0vJ6kZnP5a6vH7O+Cf7OMdk9fZl4oBjDDyqbo3EsyzWw2kHYdxGZRcpPblBd5YHiweMxq3OnLW7/L+cJ5y9uMywIW/6BaRoYiaWLcrV6t5q51pREtmNYtvXp6EHiYcSHjh5bON0Lr9BYvvv922TrunHxqHLHxKMZJCj572oiLeq3VWQLR3CE5M2It6LNhJz3pE6Ayh8GGzcuv/v9+2/jLnnz7l+yptarKjvtydZMOrxjViuy9XO+sG1jhzU6/OiuaPFk2CSdp3QAVD43Pj99Nt+/nL3tXF7+M/y2pMmynVG1u84doROGJwG7bO5AuWc57XV4I6FKTp/YQWz5fC4/3j88PVvxmUKE1C0zo955eHSKbWmD76dkB2hqGWe0elR+AQWvUcHZXgx03pMKWSHwM71yudx4jGXr/jnDPhawoPPOcHtxxrlrmC7290w9ONMItyuKDii1u5pl0U+6bK26v6kDPR4HrGjNhp9IxXIyKtdZ/a5iic+Nldl5pKrJzjRip+HeXWzVvBOeCh+9ifAYwA89WTeN7QMHx87O8UPGJmVVM/kiJNs8v7if5Rb0uBMWnvJJ3auRe3uHPR+AFq6Z7ufyuQP2SUW7fUvXw1VSY5i0nrOMQs9fpu+Qtx/7xh8CKLftdfcIXoMrsKfss2bw48LYicuzPYfqfgSz7jTyjNs+0WW9zlM9HHgNsBey7ianSNXz6KNAwLxO+arzoI4fkcKOx12ragu4KQ4MsGgA0Z8kV1s4G39rE6+m45rC2fXcWnkWNdxzntw65T5+aJF+u6z12LZUi6q4pny29YlyhdNIq61iquI9Hl8vjxWw4wIufM27WzbpLaGvVmH7H/in/Z2cPvnPJroFs1WjZHzT7eRi5QQGELa1HxYJnb4rDVvz00mFYqPpspGXy3PIDtcHB5/MR9Algq0tlhfpKgz5blv84I/bn57PZQ8O411NMivhZ2mW4ruZj/kgx/LyxKeG7BZTA2U6LXqeVyw2KiODD1ednd/tLFl0yfHBOZRVr+InaHC8Oj5/tEGOjwFfPM0j/CjaO8L/pOTs+BpqqsNDqKmuDj7VD2O9Fdlc/uoibFBMXn3QVE9QUyWsCf5ZAK4EdjQes873n80YUqRIkSJFihQpUqRIkSJFihQpUqRIkSJFihQpUqRIkSJFikfH/wGEhYYxY2+YYQAAAABJRU5ErkJggg==" alt="" class="user_profile_cam">
                </div>
                <div class="user_name" title="닉네임">
                    user : 전준
                </div>
                <div class="user_views" title="조회수">
                    views : 203회
                </div>
                <div class="user_update" title="업로드날짜">
                    update : 2022.05.17
                </div>
                <hr>
                <div class="recipse_title">
                    오늘은 생일이라서 미역국을 끓여먹었어요<br>
                    셀프축하ㅋㅋㅋㅋ<br>
                    예전에 마이텔레비전에서 백종원 미역국을 통해 한번 봐놓았는데요<br>
                    미역국 황금레시피나 백종원 소고기미역국이나 그밖에 다른 레시피들이 거의 비슷합니다<br>
                </div>
            </div>      
            <hr>
            <div class="recipse_ingredients">
                <ul class="middle-list-item" style="justify-content: center;">
                    <div class="middle-list-item_ingredients">
                        [재료]<br>
                        미역 10g<br>
                        소고기 양지 150g<br>
                    </div>
                    <div class="middle-list-item_ingredients">
                        [양념]<br>
                        참기름 10g<br>
                        국간장 150g<br>
                        마늘 150g<br>
                        꽃소금 10g <br>
                    </div>
                </ul>
            </div>
            <hr>
        <div class="recipse_main">
            <ul class="middle-list-item">
                <!-- <div> 사진이미지 클릭하면 파일업로드창으로 이미지 변경
                    <input type="file" class="real-upload" accept="image/*" required multiple style="display: none;">
                    <img src="camera.jpg" alt="" style="width: 100px; height: 100px;" class="uplaod">
            </div> -->
            <div>
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/fbe8b5334fb07f6ba3175740dd9c338a1.jpg" alt="">
            </div>
                    <li class="li_main">요즘에는 간편미역이라고 해서 씻은 미역을 20g 잘라담아서 팔고 있습니다<br>
                        20g을 다하면 너무 양이 많아서 2인분용으로 절반만 썼어요<br>
                        여기에 물을 넣으면 금방 불어납니다</li>
            </ul>
        </div>
        <div class="recipse_main">
                <ul class="middle-list-item">
                    <div>
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/b7a646ec6acbd15358f0594d6f2e4ed21.jpg" alt="">
                    </div>
                    <div class="text_ex">
                        <li class="li_main">키친타월로 소고기 피를 살짝 뺍니다</li>
                    </div>
                </ul>
            </div>
            <div class="recipse_main">
                <ul class="middle-list-item">
                <div>
                    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/e119d671906d5038696e280a7f8057421.jpg" alt="">
                </div>
                <div class="text_ex">
                    <li class="li_main">쌀뜬물로 하면 더 맛있다고 해요<br>
                        첫번째는 그냥 버리고 두번째 쌀뜬 물로 준비합니다</li>
                </div>
                </ul>
            </div>
            <div class="recipse_main">
                <ul class="middle-list-item">
                <div>
                    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/1e6df13143fc08a4184c73697cc888a21.jpg" alt="">
                </div>
                <div class="text_ex">
                    <li class="li_main">참기름을 두르고 소고기를 볶습니다<br>
                        소고기라서 금방 익네요</li>
                </div>
                </ul>
            </div>
            <div class="recipse_main">
                <ul class="middle-list-item">
                <div>
                    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/7089a39085c33e802ed1b3d5c4bc177a1.jpg" alt="">
                </div>
                <div class="text_ex">
                    <li class="li_main">불린 미역을 물기를 빼서 넣고 3분정도 볶습니다</li>
                </div>
                </ul>
            </div>
            <div class="recipse_main">
                <ul class="middle-list-item">
                <div>
                    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/b564eede0fa8e41d2ccd15a03bce191e1.jpg" alt="">
                </div>
                <div class="text_ex">
                    <li class="li_main">냄비가 달라붙을거 같아서 코팅된 후라이팬에 볶았는데요<br>
                        볶은 고기와 미역을 냄비로 옮겨놓고 쌀뜬물을 넣습니다</li>
                </div>
                </ul>
            </div>
            <div class="recipse_main">
                <ul class="middle-list-item">
                <div>
                    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/52e6b9102ee69d24546ec1763984b1a91.jpg" alt="">
                </div>
                <div class="text_ex">
                    <li>마늘 반술</li>
                </div>
                </ul>
            </div>
            <div class="recipse_main">
                <ul class="middle-list-item">
                <div>
                    <img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/dbd71f3e01c80f078cebe37ae2f74fa41.jpg" alt="">
                </div>
                <div class="text_ex">
                    <li class="li_main">국간장 큰술 2를 넣습니다<br>
                        나머지 간은 꽃소금을 넣어가면서 잡습니다<br>
                        그리고 중불에 10분 약불에 20분정도 끓입니다</li>
                </div>
                </ul>
            </div>
            <div class="recipse_main">
                <ul class="middle-list-item">
                <li><img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/12/24/4ccdbfede7435a1cba5124afdcdd07901.jpg" alt=""></li>
                <li class="li_main">끝!</li>  
            </div>
        </div>
    </section>
	
	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />
	

</body>
</html>