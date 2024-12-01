#Load Files Into a DataFrame
import pandas as pd
# df = pd.read_csv(r"C:\Users\AK Sajin\Documents\Business_analyst_job_listings_linkedin.csv")

df = pd.read_csv("Business_analyst_job_listings_linkedin.csv")
print(df)
'''
                                        title       location publishedAt  \
0                             Business Analyst  United States  2024-09-04   
1    Business Analyst, CS Workforce Management  United States  2024-08-23   
2                             Business Analyst    Atlanta, GA  2024-08-02   
3                             Business Analyst      Miami, FL  2024-08-20   
4                             Business Analyst   New York, NY  2024-08-27   
..                                         ...            ...         ...   
916                 eCommerce Business Analyst    Chicago, IL  2024-07-09   
917                         Business Analyst 5    Lansing, MI  2024-06-03   
918                    Senior Business Analyst     Irving, TX  2024-09-06   
919                    Business analyst (WCAG)  United States  2024-08-30   
920      Business Analyst/Consultant-IV - 1836  United States  2024-09-05   

                   companyName  \
0                        Wipro   
1                      Netflix   
2    Donato Technologies, Inc.   
3         Carnival Cruise Line   
4              Relevante, Inc.   
..                         ...   
916                Thanx Media   
917                    My3Tech   
918        The Intersect Group   
919      Stellar Professionals   
920               Certec, Inc.   

                                           description    applicationsCount  \
0    About the Company:\n\nWipro Limited (NYSE: WIT...  Over 200 applicants   
1    Netflix is one of the world’s leading entertai...  Over 200 applicants   
2    Required Fields\n\n\n * Number of Positions re...       170 applicants   
3    Job ID 7930 Location Miami, FL Date posted 07/...  Over 200 applicants   
4    Salary: $ 130,000.00\n\nWe have partnered with...  Over 200 applicants   
..                                                 ...                  ...   
916  Job Description\n\nJob Summary\n\nThe eCommerc...       151 applicants   
917  Hello,\n\nHope you are doing good.\n\nPosition...        34 applicants   
918  Job Summary:\n\nWe are seeking a highly detail...       144 applicants   
919  We have an opening for the Business analyst(WC...       158 applicants   
920  Business Analyst/Consultant-IV\n\nJob ID: CER ...       148 applicants   

    contractType   experienceLevel  \
0      Full-time  Mid-Senior level   
1      Full-time    Not Applicable   
2      Full-time         Associate   
3      Full-time         Associate   
4      Full-time         Associate   
..           ...               ...   
916    Full-time  Mid-Senior level   
917    Full-time         Associate   
918     Contract  Mid-Senior level   
919     Contract         Associate   
920     Contract         Associate   

                                          workType  \
0                 Analyst and Health Care Provider   
1                                            Other   
2    Research, Analyst, and Information Technology   
3    Research, Analyst, and Information Technology   
4    Research, Analyst, and Information Technology   
..                                             ...   
916  Research, Analyst, and Information Technology   
917  Research, Analyst, and Information Technology   
918                                        Analyst   
919  Research, Analyst, and Information Technology   
920  Research, Analyst, and Information Technology   

                                                sector  
0                        IT Services and IT Consulting  
1                              Entertainment Providers  
2                        IT Services and IT Consulting  
3                                  Travel Arrangements  
4                                              Banking  
..                                                 ...  
916                      IT Services and IT Consulting  
917                      IT Services and IT Consulting  
918                            Staffing and Recruiting  
919  Government Administration and Government Relat...  
920                               Information Services  

[921 rows x 10 columns]
'''


import pandas as pd
df = pd.read_csv("Spotify Most Streamed Songs.csv")
print(df)


'''
                              track_name      artist(s)_name  artist_count  \
0    Seven (feat. Latto) (Explicit Ver.)    Latto, Jung Kook             2   
1                                   LALA         Myke Towers             1   
2                                vampire      Olivia Rodrigo             1   
3                           Cruel Summer        Taylor Swift             1   
4                         WHERE SHE GOES           Bad Bunny             1   
..                                   ...                 ...           ...   
948                         My Mind & Me        Selena Gomez             1   
949            Bigger Than The Whole Sky        Taylor Swift             1   
950                 A Veces (feat. Feid)  Feid, Paulo Londra             2   
951                        En La De Ella  Feid, Sech, Jhayco             3   
952                                Alone           Burna Boy             1   

     released_year  released_month  released_day  in_spotify_playlists  \
0             2023               7            14                   553   
1             2023               3            23                  1474   
2             2023               6            30                  1397   
3             2019               8            23                  7858   
4             2023               5            18                  3133   
..             ...             ...           ...                   ...   
948           2022              11             3                   953   
949           2022              10            21                  1180   
950           2022              11             3                   573   
951           2022              10            20                  1320   
952           2022              11             4                   782   

     in_spotify_charts    streams  in_apple_playlists  ...  key   mode  \
0                  147  141381703                  43  ...    B  Major   
1                   48  133716286                  48  ...   C#  Major   
2                  113  140003974                  94  ...    F  Major   
3                  100  800840817                 116  ...    A  Major   
4                   50  303236322                  84  ...    A  Minor   
..                 ...        ...                 ...  ...  ...    ...   
948                  0   91473363                  61  ...    A  Major   
949                  0  121871870                   4  ...   F#  Major   
950                  0   73513683                   2  ...   C#  Major   
951                  0  133895612                  29  ...   C#  Major   
952                  2   96007391                  27  ...    E  Minor   

     danceability_% valence_%  energy_% acousticness_% instrumentalness_%  \
0                80        89        83             31                  0   
1                71        61        74              7                  0   
2                51        32        53             17                  0   
3                55        58        72             11                  0   
4                65        23        80             14                 63   
..              ...       ...       ...            ...                ...   
948              60        24        39             57                  0   
949              42         7        24             83                  1   
950              80        81        67              4                  0   
951              82        67        77              8                  0   
952              61        32        67             15                  0   

     liveness_%  speechiness_%  \
0             8              4   
1            10              4   
2            31              6   
3            11             15   
4            11              6   
..          ...            ...   
948           8              3   
949          12              6   
950           8              6   
951          12              5   
952          11              5   

                                             cover_url  
0                                            Not Found  
1    https://i.scdn.co/image/ab67616d0000b2730656d5...  
2    https://i.scdn.co/image/ab67616d0000b273e85259...  
3    https://i.scdn.co/image/ab67616d0000b273e787cf...  
4    https://i.scdn.co/image/ab67616d0000b273ab5c9c...  
..                                                 ...  
948  https://i.scdn.co/image/ab67616d0000b2730f5397...  
949  https://i.scdn.co/image/ab67616d0000b273e0b60c...  
950                                          Not Found  
951                                          Not Found  
952  https://i.scdn.co/image/ab67616d0000b273992a1f...  

[953 rows x 25 columns]
'''