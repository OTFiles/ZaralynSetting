.class public Lcom/readboy/provider/UserDbSearch;
.super Ljava/lang/Object;
.source "UserDbSearch.java"


# static fields
.field private static final NEW_PERSONALINFO_VERSION:I = 0x12c

.field private static userInfoDb:Lcom/readboy/provider/UserDbSearch;


# instance fields
.field final TAG:Ljava/lang/String;

.field private gradeStr:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private showDebugInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/readboy/provider/UserDbSearch;->userInfoDb:Lcom/readboy/provider/UserDbSearch;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "----UserInfoDb----"

    iput-object v0, p0, Lcom/readboy/provider/UserDbSearch;->TAG:Ljava/lang/String;

    .line 613
    const-string v1, "\u4e00\u5e74\u7ea7"

    const-string v2, "\u4e8c\u5e74\u7ea7"

    const-string v3, "\u4e09\u5e74\u7ea7"

    const-string v4, "\u56db\u5e74\u7ea7"

    const-string v5, "\u4e94\u5e74\u7ea7"

    const-string v6, "\u516d\u5e74\u7ea7"

    const-string v7, "\u4e03\u5e74\u7ea7"

    const-string v8, "\u516b\u5e74\u7ea7"

    const-string v9, "\u4e5d\u5e74\u7ea7"

    const-string v10, "\u9ad8\u4e00"

    const-string v11, "\u9ad8\u4e8c"

    const-string v12, "\u9ad8\u4e09"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/provider/UserDbSearch;->gradeStr:[Ljava/lang/String;

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/provider/UserDbSearch;->showDebugInfo:Z

    .line 50
    iput-object p1, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 677
    iget-boolean v0, p0, Lcom/readboy/provider/UserDbSearch;->showDebugInfo:Z

    if-eqz v0, :cond_0

    .line 679
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    return-void
.end method

.method private changeVipEndTimeMills(Ljava/lang/String;)J
    .locals 4
    .param p1, "endTime"    # Ljava/lang/String;

    .line 826
    const-wide/16 v0, 0x0

    .line 828
    .local v0, "endTimeValue":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 831
    goto :goto_0

    .line 829
    :catch_0
    move-exception v2

    .line 830
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    .end local v2
    :goto_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 833
    return-wide v0
.end method

.method private changeVipEndTimeSecond(Ljava/lang/String;)J
    .locals 4
    .param p1, "endTime"    # Ljava/lang/String;

    .line 837
    const-wide/16 v0, 0x0

    .line 839
    .local v0, "endTimeValue":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 842
    goto :goto_0

    .line 840
    :catch_0
    move-exception v2

    .line 841
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 843
    .end local v2
    :goto_0
    return-wide v0
.end method

.method public static getAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "token":Ljava/lang/String;
    sget-object v7, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 145
    .local v7, "userInfoUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 147
    .local v1, "userInfoCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    const-string v2, "accessToken"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, "tokenIndex":I
    :try_start_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v3
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    return-object v0

    .line 148
    .end local v2
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_2
    return-object v0
.end method

.method public static getAccessTokenExpire(Landroid/content/Context;)J
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;

    .line 165
    const-wide/16 v0, 0x0

    .line 166
    .local v0, "tokenExpire":J
    sget-object v8, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 167
    .local v8, "userInfoUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 169
    .local v2, "userInfoCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    const-string v3, "accessTokenExpire"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 178
    .local v3, "tokenExpireIndex":I
    :try_start_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v4
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 183
    return-wide v0

    .line 170
    .end local v3
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_2
    return-wide v0
.end method

.method public static getClassToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .line 125
    sget-object v6, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 126
    .local v6, "userInfoUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 128
    .local v0, "userInfoCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    const-string v1, "classToken"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, "classTokenIndex":I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "classToken":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    return-object v2

    .line 129
    .end local v1
    .end local v2
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method private getGradeFromIntToStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "grade"    # I

    .line 617
    iget-object v0, p0, Lcom/readboy/provider/UserDbSearch;->gradeStr:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/readboy/provider/UserDbSearch;->userInfoDb:Lcom/readboy/provider/UserDbSearch;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/readboy/provider/UserDbSearch;

    invoke-direct {v0, p0}, Lcom/readboy/provider/UserDbSearch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/readboy/provider/UserDbSearch;->userInfoDb:Lcom/readboy/provider/UserDbSearch;

    .line 45
    :cond_0
    sget-object v0, Lcom/readboy/provider/UserDbSearch;->userInfoDb:Lcom/readboy/provider/UserDbSearch;

    return-object v0
.end method

.method private getPersonalInfoVersionCode()I
    .locals 5

    .line 519
    iget-object v0, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 522
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 524
    .local v1, "versionCode":I
    :try_start_0
    const-string v2, "com.readboy.personalsetting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 525
    .local v2, "packInfo":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 529
    goto :goto_0

    .line 526
    .end local v2
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 530
    .end local v2
    :goto_0
    const-string v2, "----UserInfoDb----"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e2a\u4eba\u4e2d\u5fc3\u7684\u7248\u672c\u662f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return v1
.end method

.method private getUserBooksFromDatabase(Lcom/readboy/provider/mhc/info/UserBaseInfo;)Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .locals 14
    .param p1, "mUserInfo"    # Lcom/readboy/provider/mhc/info/UserBaseInfo;

    .line 320
    const-string v0, "content://com.readboy.personal.personalProvider/mhc_user_books_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 322
    .local v0, "userInfoUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 323
    .local v7, "userBooksCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 325
    .end local v7
    .local v1, "userBooksCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 333
    :cond_0
    const-string v2, "stage"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 334
    .local v2, "stageIndex":I
    const-string v3, "grade"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 335
    .local v3, "gradeIndex":I
    const-string v4, "gradeStr"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 336
    .local v4, "gradeStrIndex":I
    const-string v5, "schoolId"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 337
    .local v5, "schoolIdIndex":I
    const-string v6, "schoolName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 339
    .local v6, "schoolNameIndex":I
    const-string v7, "provinceId"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 340
    .local v7, "provIdIndex":I
    const-string v8, "cityId"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 341
    .local v8, "cityIdIndex":I
    const-string v9, "districtId"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 342
    .local v9, "districtIdIndex":I
    const-string v10, "provStr"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 343
    .local v10, "provStrIndex":I
    const-string v11, "cityStr"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 344
    .local v11, "cityStrIndex":I
    const-string v12, "districtStr"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 346
    .local v12, "districtStrIndex":I
    if-ltz v2, :cond_1

    .line 347
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->stage:I

    .line 348
    :cond_1
    if-ltz v3, :cond_2

    .line 349
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    .line 350
    :cond_2
    if-ltz v4, :cond_3

    .line 351
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeStr:Ljava/lang/String;

    .line 352
    :cond_3
    if-ltz v5, :cond_4

    .line 353
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolId:I

    .line 354
    :cond_4
    if-ltz v6, :cond_5

    .line 355
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolName:Ljava/lang/String;

    .line 356
    :cond_5
    if-ltz v7, :cond_6

    .line 357
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provId:I

    .line 358
    :cond_6
    if-ltz v8, :cond_7

    .line 359
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityId:I

    .line 360
    :cond_7
    if-ltz v9, :cond_8

    .line 361
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->districtId:I

    .line 362
    :cond_8
    if-ltz v10, :cond_9

    .line 363
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provStr:Ljava/lang/String;

    .line 364
    :cond_9
    if-ltz v11, :cond_a

    .line 365
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityStr:Ljava/lang/String;

    .line 366
    :cond_a
    if-ltz v12, :cond_b

    .line 367
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->districtStr:Ljava/lang/String;

    .line 369
    :cond_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 371
    return-object p1

    .line 326
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    :cond_c
    :goto_0
    if-eqz v1, :cond_d

    .line 328
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_d
    return-object p1
.end method

.method private getUserIconFromDb()Landroid/graphics/Bitmap;
    .locals 8

    .line 194
    sget-object v6, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 195
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 196
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "imageStr"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    .end local v7
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    const-string v2, "imageStr"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 206
    .local v2, "index":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 207
    .local v3, "iconByte":[B
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 209
    if-nez v3, :cond_1

    .line 211
    return-object v1

    .line 214
    :cond_1
    const/4 v1, 0x0

    array-length v4, v3

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 216
    .local v1, "bm":Landroid/graphics/Bitmap;
    return-object v1

    .line 199
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 201
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_3
    return-object v1
.end method

.method private getUserInfoFromDatabase()Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .locals 35

    .line 222
    move-object/from16 v1, p0

    const-string v0, "----UserInfoDb----"

    const-string v2, "mhc----------getUserInfoF\tromDatabase()"

    invoke-direct {v1, v0, v2}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v2, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 224
    .local v2, "userInfoUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 225
    .local v0, "userInfoCursor":Landroid/database/Cursor;
    iget-object v3, v1, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 227
    .end local v0
    .local v3, "userInfoCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_15

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    move-object/from16 v16, v2

    goto/16 :goto_b

    .line 235
    :cond_0
    new-instance v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;

    invoke-direct {v0}, Lcom/readboy/provider/mhc/info/UserBaseInfo;-><init>()V

    move-object v4, v0

    .line 237
    .local v4, "mUserInfo":Lcom/readboy/provider/mhc/info/UserBaseInfo;
    const-string v0, "uid"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 238
    .local v5, "uidIndex":I
    const-string v0, "username"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 239
    .local v6, "userNameIndex":I
    const-string v0, "realname"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 240
    .local v7, "realNameIndex":I
    const-string v0, "password"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 241
    .local v8, "passwordIndex":I
    const-string v0, "accessToken"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 242
    .local v9, "tokenIndex":I
    const-string v0, "accessTokenExpire"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 243
    .local v10, "tokenExpireIndex":I
    const-string v0, "classToken"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 244
    .local v11, "classTokenIndex":I
    const-string v0, "photoUri"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 246
    .local v12, "photoUriIndex":I
    const-string v0, "gender"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 247
    .local v13, "genderIndex":I
    const-string v0, "genderStr"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 248
    .local v14, "genderStrIndex":I
    const-string v0, "birth_y"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 249
    .local v15, "birthYearIndex":I
    const-string v0, "birth_m"

    move-object/from16 v16, v2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 250
    .local v2, "birthMonthIndex":I
    .local v16, "userInfoUri":Landroid/net/Uri;
    const-string v0, "birth_d"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "birthDayIndex":I
    const-string v0, "money"

    move/from16 v18, v1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 252
    .local v1, "moneyIndex":I
    .local v18, "birthDayIndex":I
    const-string v0, "bean"

    move/from16 v19, v1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 253
    .local v1, "beanIndex":I
    .local v19, "moneyIndex":I
    const-string v0, "mobile"

    move/from16 v20, v1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, "mobileIndex":I
    .local v20, "beanIndex":I
    const-string v0, "regdate"

    move/from16 v21, v1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 256
    .local v1, "regdateIndex":I
    .local v21, "mobileIndex":I
    const-string v0, "uid_str"

    move/from16 v22, v2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 257
    .local v2, "uidStrIndex":I
    .local v22, "birthMonthIndex":I
    const-string v0, "uid_parent"

    move/from16 v23, v15

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 258
    .local v15, "uidParentIndex":I
    .local v23, "birthYearIndex":I
    const-string v0, "grade_org"

    move/from16 v24, v14

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 260
    .local v14, "gradeOrgIndex":I
    .local v24, "genderStrIndex":I
    if-ltz v1, :cond_1

    .line 261
    move/from16 v25, v12

    move/from16 v26, v13

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .end local v12
    .end local v13
    .local v25, "photoUriIndex":I
    .local v26, "genderIndex":I
    iput-wide v12, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->regdate:J

    goto :goto_0

    .line 262
    .end local v25
    .end local v26
    .restart local v12
    .restart local v13
    :cond_1
    move/from16 v25, v12

    move/from16 v26, v13

    .end local v12
    .end local v13
    .restart local v25
    .restart local v26
    :goto_0
    if-ltz v2, :cond_2

    .line 263
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidStr:Ljava/lang/String;

    .line 264
    :cond_2
    if-ltz v15, :cond_3

    .line 265
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidParent:Ljava/lang/String;

    .line 266
    :cond_3
    if-ltz v14, :cond_4

    .line 267
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeOrg:I

    .line 268
    :cond_4
    if-ltz v5, :cond_5

    .line 269
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    .line 270
    :cond_5
    if-ltz v6, :cond_6

    .line 271
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->userName:Ljava/lang/String;

    .line 272
    :cond_6
    if-ltz v7, :cond_7

    .line 273
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->realName:Ljava/lang/String;

    .line 274
    :cond_7
    if-ltz v8, :cond_8

    .line 275
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->passWord:Ljava/lang/String;

    .line 276
    :cond_8
    if-ltz v9, :cond_9

    .line 277
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->token:Ljava/lang/String;

    .line 278
    :cond_9
    if-ltz v10, :cond_a

    .line 280
    :try_start_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->tokenExpire:J

    .line 283
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    .end local v0
    :cond_a
    :goto_1
    if-ltz v11, :cond_b

    .line 285
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->class_token:Ljava/lang/String;

    .line 286
    :cond_b
    if-ltz v25, :cond_c

    .line 287
    move/from16 v12, v25

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v25
    .restart local v12
    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->photoUri:Ljava/lang/String;

    goto :goto_2

    .line 290
    .end local v12
    .restart local v25
    :cond_c
    move/from16 v12, v25

    .end local v25
    .restart local v12
    :goto_2
    if-ltz v26, :cond_d

    .line 291
    move/from16 v13, v26

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .end local v26
    .restart local v13
    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gender:I

    goto :goto_3

    .line 292
    .end local v13
    .restart local v26
    :cond_d
    move/from16 v13, v26

    .end local v26
    .restart local v13
    :goto_3
    if-ltz v24, :cond_e

    .line 293
    move/from16 v27, v1

    move/from16 v1, v24

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v24
    .local v1, "genderStrIndex":I
    .local v27, "regdateIndex":I
    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->genderStr:Ljava/lang/String;

    goto :goto_4

    .line 294
    .end local v27
    .local v1, "regdateIndex":I
    .restart local v24
    :cond_e
    move/from16 v27, v1

    move/from16 v1, v24

    .end local v24
    .local v1, "genderStrIndex":I
    .restart local v27
    :goto_4
    if-ltz v23, :cond_f

    .line 295
    move/from16 v28, v1

    move/from16 v1, v23

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .end local v23
    .local v1, "birthYearIndex":I
    .local v28, "genderStrIndex":I
    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthYear:I

    goto :goto_5

    .line 296
    .end local v28
    .local v1, "genderStrIndex":I
    .restart local v23
    :cond_f
    move/from16 v28, v1

    move/from16 v1, v23

    .end local v23
    .local v1, "birthYearIndex":I
    .restart local v28
    :goto_5
    if-ltz v22, :cond_10

    .line 297
    move/from16 v29, v1

    move/from16 v1, v22

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .end local v22
    .local v1, "birthMonthIndex":I
    .local v29, "birthYearIndex":I
    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthMonth:I

    goto :goto_6

    .line 298
    .end local v29
    .local v1, "birthYearIndex":I
    .restart local v22
    :cond_10
    move/from16 v29, v1

    move/from16 v1, v22

    .end local v22
    .local v1, "birthMonthIndex":I
    .restart local v29
    :goto_6
    if-ltz v18, :cond_11

    .line 299
    move/from16 v30, v1

    move/from16 v1, v18

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .end local v18
    .local v1, "birthDayIndex":I
    .local v30, "birthMonthIndex":I
    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthDay:I

    goto :goto_7

    .line 300
    .end local v30
    .local v1, "birthMonthIndex":I
    .restart local v18
    :cond_11
    move/from16 v30, v1

    move/from16 v1, v18

    .end local v18
    .local v1, "birthDayIndex":I
    .restart local v30
    :goto_7
    if-ltz v19, :cond_12

    .line 301
    move/from16 v31, v1

    move/from16 v1, v19

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .end local v19
    .local v1, "moneyIndex":I
    .local v31, "birthDayIndex":I
    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->money:I

    goto :goto_8

    .line 302
    .end local v31
    .local v1, "birthDayIndex":I
    .restart local v19
    :cond_12
    move/from16 v31, v1

    move/from16 v1, v19

    .end local v19
    .local v1, "moneyIndex":I
    .restart local v31
    :goto_8
    if-ltz v20, :cond_13

    .line 303
    move/from16 v32, v1

    move/from16 v1, v20

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .end local v20
    .local v1, "beanIndex":I
    .local v32, "moneyIndex":I
    iput v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->bean:I

    goto :goto_9

    .line 304
    .end local v32
    .local v1, "moneyIndex":I
    .restart local v20
    :cond_13
    move/from16 v32, v1

    move/from16 v1, v20

    .end local v20
    .local v1, "beanIndex":I
    .restart local v32
    :goto_9
    if-ltz v21, :cond_14

    .line 305
    move/from16 v33, v1

    move/from16 v1, v21

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v21
    .local v1, "mobileIndex":I
    .local v33, "beanIndex":I
    iput-object v0, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->mobile:Ljava/lang/String;

    goto :goto_a

    .line 313
    .end local v33
    .local v1, "beanIndex":I
    .restart local v21
    :cond_14
    move/from16 v33, v1

    move/from16 v1, v21

    .end local v21
    .local v1, "mobileIndex":I
    .restart local v33
    :goto_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 315
    move/from16 v34, v1

    move/from16 v17, v31

    move-object/from16 v1, p0

    invoke-direct {v1, v4}, Lcom/readboy/provider/UserDbSearch;->getUserBooksFromDatabase(Lcom/readboy/provider/mhc/info/UserBaseInfo;)Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    .end local v1
    .end local v31
    .local v17, "birthDayIndex":I
    .local v34, "mobileIndex":I
    return-object v0

    .line 228
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    .end local v17
    .end local v27
    .end local v28
    .end local v29
    .end local v30
    .end local v32
    .end local v33
    .end local v34
    .local v2, "userInfoUri":Landroid/net/Uri;
    :cond_15
    move-object/from16 v16, v2

    .end local v2
    .restart local v16
    :goto_b
    if-eqz v3, :cond_16

    .line 230
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUserInfoFromFile(Z)Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .locals 8
    .param p1, "isTutorsplanInOldVersion"    # Z

    .line 536
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 538
    const-string v1, "----UserInfoDb----"

    const-string v2, "mhc----------getUserInfoFromFile()"

    invoke-direct {p0, v1, v2}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0}, Lcom/readboy/provider/UserDbSearch;->isPersonalFileExit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    const-string v1, "----UserInfoDb----"

    const-string v2, "mhc----------!isPersonalFileExit()"

    invoke-direct {p0, v1, v2}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-object v0

    .line 543
    :cond_0
    return-object v0

    .line 546
    :cond_1
    const-string v1, "----UserInfoDb----"

    const-string v2, "mhc----------getUserInfoFromFile()"

    invoke-direct {p0, v1, v2}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/readboy/provider/UserDbSearch;->isPersonalFileExit()Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    const-string v1, "----UserInfoDb----"

    const-string v2, "mhc----------!isPersonalFileExit()"

    invoke-direct {p0, v1, v2}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-object v0

    .line 551
    :cond_2
    invoke-direct {p0}, Lcom/readboy/provider/UserDbSearch;->readTxtInfo()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "infoStr":Ljava/lang/String;
    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "infoStrs":[Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 557
    .local v2, "jb":Lorg/json/JSONObject;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 558
    aget-object v5, v1, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "elements":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    aget-object v6, v5, v3

    if-eqz v6, :cond_3

    aget-object v6, v5, v3

    .line 561
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    aget-object v7, v5, v6

    if-eqz v7, :cond_3

    .line 563
    :try_start_0
    aget-object v7, v5, v3

    aget-object v6, v5, v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 564
    :catch_0
    move-exception v6

    .line 566
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 557
    .end local v5
    .end local v6
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    .end local v4
    :cond_4
    const-string v4, "zsc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;

    invoke-direct {v4}, Lcom/readboy/provider/mhc/info/UserBaseInfo;-><init>()V

    .line 574
    .local v4, "mUserInfo":Lcom/readboy/provider/mhc/info/UserBaseInfo;
    :try_start_1
    const-string v5, "uid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    .line 575
    const-string v5, "username"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->userName:Ljava/lang/String;

    .line 576
    const-string v5, "realname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->realName:Ljava/lang/String;

    .line 577
    const-string v5, "grade"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    .line 578
    iget v5, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    const/16 v6, 0x201

    if-ge v5, v6, :cond_5

    .line 579
    iput v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    goto :goto_2

    .line 581
    :cond_5
    iget v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    invoke-virtual {p0, v3}, Lcom/readboy/provider/UserDbSearch;->gradeDbIdToId(I)I

    move-result v3

    iput v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    .line 583
    :goto_2
    iget v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    invoke-direct {p0, v3}, Lcom/readboy/provider/UserDbSearch;->getGradeFromIntToStr(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeStr:Ljava/lang/String;

    .line 585
    const-string v3, "schoolStr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolName:Ljava/lang/String;

    .line 586
    const-string v3, "school"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolId:I

    .line 588
    const-string v3, "provStr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provStr:Ljava/lang/String;

    .line 589
    const-string v3, "cityStr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityStr:Ljava/lang/String;

    .line 590
    const-string v3, "province"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provId:I

    .line 591
    const-string v3, "city"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityId:I

    .line 606
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 603
    :catch_1
    move-exception v3

    .line 605
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 607
    .end local v3
    :goto_3
    invoke-virtual {p0}, Lcom/readboy/provider/UserDbSearch;->getToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/readboy/provider/mhc/info/UserBaseInfo;->token:Ljava/lang/String;

    .line 608
    return-object v4
.end method

.method private isPersonalFileExit()Z
    .locals 6

    .line 505
    const/4 v0, 0x1

    .line 507
    .local v0, "exit":Z
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/readboy/provider/zsc/info/OldDbConstants;->USERINFOPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, "file1":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/readboy/provider/zsc/info/OldDbConstants;->SUBJECTPATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, "file2":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/readboy/provider/zsc/info/OldDbConstants;->USERINFOPATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    .local v3, "file3":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 511
    :cond_0
    const/4 v0, 0x0

    .line 513
    :cond_1
    return v0
.end method

.method public static isSupportVip()Z
    .locals 2

    .line 764
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 765
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dream6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isVipDreamMachine()Z
    .locals 2

    .line 756
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 757
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 760
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private readTxtInfo()Ljava/lang/String;
    .locals 6

    .line 622
    const-string v0, ""

    .line 626
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/readboy/encrypt/EncryptReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/readboy/provider/zsc/info/OldDbConstants;->USERINFOPATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/readboy/encrypt/EncryptReader;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, "eis":Lcom/readboy/encrypt/EncryptReader;
    invoke-virtual {v1}, Lcom/readboy/encrypt/EncryptReader;->available()I

    move-result v2

    .line 631
    .local v2, "av":I
    if-lez v2, :cond_0

    .line 633
    new-array v3, v2, [B

    .line 636
    .local v3, "buff":[B
    invoke-virtual {v1, v3}, Lcom/readboy/encrypt/EncryptReader;->read([B)I

    .line 639
    new-instance v4, Ljava/lang/String;

    const-string v5, "gbk"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    .line 641
    const-string v4, "encryption"

    invoke-direct {p0, v4, v0}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .end local v3
    :cond_0
    invoke-virtual {v1}, Lcom/readboy/encrypt/EncryptReader;->close()V

    .line 646
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 648
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 653
    .end local v1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static updateVipStatus(Landroid/content/Context;IJI)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "dueData"    # J
    .param p4, "vipStatus"    # I

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "resCount":I
    if-eqz p0, :cond_1

    if-lez p1, :cond_1

    .line 797
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v1, "valuesUserInfo":Landroid/content/ContentValues;
    const-string v2, "end_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v2, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v2, "vip_status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 802
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/readboy/provider/mhc/info/UserInfoVipConstant;->USER_INFO_VIP_CONTENT_URI:Landroid/net/Uri;

    .line 804
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 805
    .local v4, "res":Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v0, v5

    .line 813
    .end local v4
    goto :goto_1

    .line 806
    :catch_0
    move-exception v4

    .line 807
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v5

    .line 812
    goto :goto_1

    .line 810
    :catch_1
    move-exception v5

    .line 811
    .local v5, "ee":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    .end local v4
    .end local v5
    :goto_1
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 816
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "update"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    .end local v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 818
    :catch_2
    move-exception v4

    .line 819
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 822
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_1
    :goto_2
    return v0
.end method

.method public static writeClassToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "classToken"    # Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    .line 115
    const-string p1, ""

    .line 117
    :cond_0
    const-string v1, "classToken"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 119
    return-void
.end method


# virtual methods
.method public getBookClassInfo(I)Lcom/readboy/provider/mhc/info/BookClassInfo;
    .locals 35
    .param p1, "subjectId"    # I

    move-object/from16 v0, p0

    .line 381
    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_4

    const/16 v4, 0xa

    if-le v1, v4, :cond_0

    goto/16 :goto_1

    .line 385
    :cond_0
    const-string v4, "content://com.readboy.personal.personalProvider/mhc_book_class_data"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 387
    .local v4, "uri1":Landroid/net/Uri;
    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 389
    .local v5, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 390
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v7, v0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1

    .line 393
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_0

    .line 400
    :cond_1
    new-instance v2, Lcom/readboy/provider/mhc/info/BookClassInfo;

    invoke-direct {v2}, Lcom/readboy/provider/mhc/info/BookClassInfo;-><init>()V

    .line 402
    .local v2, "bookInfo":Lcom/readboy/provider/mhc/info/BookClassInfo;
    const-string v7, "id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 403
    .local v7, "idIndex":I
    const-string v8, "bookId"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 404
    .local v8, "bookIdIndex":I
    const-string v9, "bookName"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 405
    .local v9, "bookNameIndex":I
    const-string v10, "semesterId"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 406
    .local v10, "semesterIdIndex":I
    const-string v11, "chapterId"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 407
    .local v11, "chapterIdIndex":I
    const-string v12, "chapterIndex"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 408
    .local v12, "chapterIndexIndex":I
    const-string v13, "chapterName"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 409
    .local v13, "chapterNameIndex":I
    const-string v14, "sectionId"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 410
    .local v14, "sectionIdIndex":I
    const-string v15, "sectionIndex"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 411
    .local v15, "sectionIndexIndex":I
    const-string v3, "sectionName"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 412
    .local v3, "sectionNameIndex":I
    const-string v1, "bookGradeId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 413
    .local v1, "gradeIdIndex":I
    move-object/from16 v16, v4

    const-string v4, "bookSubId"

    .end local v4
    .local v16, "uri1":Landroid/net/Uri;
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 414
    .local v4, "subjectIdIndex":I
    move-object/from16 v17, v5

    const-string v5, "editionId"

    .end local v5
    .local v17, "uri":Landroid/net/Uri;
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 415
    .local v5, "editionIdIndex":I
    move/from16 v18, v5

    const-string v5, "editionName"

    .end local v5
    .local v18, "editionIdIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 416
    .local v5, "editionNameIndex":I
    move/from16 v19, v5

    const-string v5, "publishId"

    .end local v5
    .local v19, "editionNameIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 417
    .local v5, "pubIdIndex":I
    move/from16 v20, v5

    const-string v5, "publishName"

    .end local v5
    .local v20, "pubIdIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 418
    .local v5, "pubNameIndex":I
    move/from16 v21, v5

    const-string v5, "subjectVisible"

    .end local v5
    .local v21, "pubNameIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 419
    .local v5, "subjectVisibleIndex":I
    move/from16 v22, v5

    const-string v5, "coverPath"

    .end local v5
    .local v22, "subjectVisibleIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 420
    .local v5, "coverPathIndex":I
    move/from16 v23, v5

    const-string v5, "classId"

    .end local v5
    .local v23, "coverPathIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 421
    .local v5, "classIdIndex":I
    move/from16 v24, v5

    const-string v5, "className"

    .end local v5
    .local v24, "classIdIndex":I
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 423
    .local v5, "classNameIndex":I
    move/from16 v26, v4

    move/from16 v25, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v7, v6, v5}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;I)I

    move-result v4

    .end local v4
    .end local v5
    .local v25, "classNameIndex":I
    .local v26, "subjectIdIndex":I
    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    .line 424
    invoke-virtual {v0, v8, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v4

    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookId:I

    .line 425
    invoke-virtual {v0, v9, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->bookName:Ljava/lang/String;

    .line 426
    invoke-virtual {v0, v10, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v4

    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->semesterId:I

    .line 427
    invoke-virtual {v0, v11, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v4

    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterId:I

    .line 428
    invoke-virtual {v0, v12, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v4

    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterIndex:I

    .line 429
    invoke-virtual {v0, v13, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->chapterName:Ljava/lang/String;

    .line 430
    invoke-virtual {v0, v14, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v4

    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionId:I

    .line 431
    invoke-virtual {v0, v15, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v4

    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionIndex:I

    .line 432
    invoke-virtual {v0, v3, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->sectionName:Ljava/lang/String;

    .line 433
    invoke-virtual {v0, v1, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v4

    iput v4, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->gradeId:I

    .line 434
    move/from16 v4, v26

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v6, v5}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;I)I

    move-result v5

    .end local v26
    .restart local v4
    iput v5, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectId:I

    .line 435
    move/from16 v27, v1

    move/from16 v5, v18

    invoke-virtual {v0, v5, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v1

    .end local v1
    .end local v18
    .local v5, "editionIdIndex":I
    .local v27, "gradeIdIndex":I
    iput v1, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionId:I

    .line 436
    move/from16 v28, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .end local v3
    .end local v19
    .local v1, "editionNameIndex":I
    .local v28, "sectionNameIndex":I
    iput-object v3, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->editionName:Ljava/lang/String;

    .line 437
    move/from16 v29, v1

    move/from16 v3, v20

    invoke-virtual {v0, v3, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;)I

    move-result v1

    .end local v1
    .end local v20
    .local v3, "pubIdIndex":I
    .local v29, "editionNameIndex":I
    iput v1, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressId:I

    .line 438
    move/from16 v30, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .end local v3
    .end local v21
    .local v1, "pubNameIndex":I
    .local v30, "pubIdIndex":I
    iput-object v3, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->pressName:Ljava/lang/String;

    .line 439
    const/4 v3, 0x0

    move/from16 v31, v1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6, v3}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;I)I

    move-result v3

    .end local v22
    .local v1, "subjectVisibleIndex":I
    .local v31, "pubNameIndex":I
    iput v3, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->subjectVisible:I

    .line 440
    move/from16 v32, v1

    move/from16 v3, v23

    invoke-virtual {v0, v3, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .end local v1
    .end local v23
    .local v3, "coverPathIndex":I
    .local v32, "subjectVisibleIndex":I
    iput-object v1, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->coverPath:Ljava/lang/String;

    .line 441
    move/from16 v33, v3

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .end local v3
    .end local v24
    .local v1, "classIdIndex":I
    .local v33, "coverPathIndex":I
    iput-object v3, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->classId:Ljava/lang/String;

    .line 442
    move/from16 v34, v1

    move/from16 v3, v25

    invoke-virtual {v0, v3, v6}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .end local v1
    .end local v25
    .local v3, "classNameIndex":I
    .local v34, "classIdIndex":I
    iput-object v1, v2, Lcom/readboy/provider/mhc/info/BookClassInfo;->className:Ljava/lang/String;

    .line 444
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 445
    return-object v2

    .line 393
    .end local v2
    .end local v3
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    .end local v17
    .end local v27
    .end local v28
    .end local v29
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .local v4, "uri1":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    :cond_2
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4
    .end local v5
    .restart local v16
    .restart local v17
    :goto_0
    if-eqz v6, :cond_3

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_3
    return-object v2

    .line 383
    .end local v6
    .end local v16
    .end local v17
    :cond_4
    :goto_1
    return-object v2
.end method

.method public getBookCoverFromDb(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "subjectId"    # I

    .line 478
    const-string v0, "content://com.readboy.personal.personalProvider/mhc_book_class_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 480
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "imageStr"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 483
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    const-string v3, "imageStr"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 491
    .local v3, "index":I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 492
    .local v4, "iconByte":[B
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 494
    if-nez v4, :cond_1

    .line 496
    return-object v2

    .line 499
    :cond_1
    array-length v2, v4

    invoke-static {v4, v7, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 501
    .local v2, "bm":Landroid/graphics/Bitmap;
    return-object v2

    .line 484
    .end local v2
    .end local v3
    .end local v4
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 486
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_3
    return-object v2
.end method

.method public getCursorIntValue(ILandroid/database/Cursor;)I
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/readboy/provider/UserDbSearch;->getCursorIntValue(ILandroid/database/Cursor;I)I

    move-result v0

    return v0
.end method

.method public getCursorIntValue(ILandroid/database/Cursor;I)I
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "defaultValue"    # I

    .line 453
    move v0, p3

    .line 454
    .local v0, "value":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 455
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 457
    :cond_0
    return v0
.end method

.method public getCursorStringValue(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 461
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/readboy/provider/UserDbSearch;->getCursorStringValue(ILandroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorStringValue(ILandroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 465
    move-object v0, p3

    .line 466
    .local v0, "value":Ljava/lang/String;
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 467
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_0
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 8

    .line 87
    sget-object v0, Lcom/readboy/provider/zsc/info/OldDbConstants;->T_TOKEN:Ljava/lang/String;

    .line 89
    .local v0, "tokenName":Ljava/lang/String;
    :try_start_0
    const-string v1, "content://com.readboy.personal.personalProvider/PersonalProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 90
    .local v3, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string v5, "_id=?"

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 91
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 93
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 94
    const/4 v2, 0x0

    return-object v2

    .line 97
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "index":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "token":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 102
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    return-object v2
.end method

.method public getUserIcon()Landroid/graphics/Bitmap;
    .locals 4

    .line 56
    invoke-direct {p0}, Lcom/readboy/provider/UserDbSearch;->getPersonalInfoVersionCode()I

    move-result v0

    const/16 v1, 0x12c

    if-le v1, v0, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/readboy/provider/zsc/info/OldDbConstants;->ICONPATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/readboy/provider/zsc/info/OldDbConstants;->ICONPATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0

    .line 64
    .end local v0
    :cond_1
    invoke-direct {p0}, Lcom/readboy/provider/UserDbSearch;->getUserIconFromDb()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/readboy/provider/UserDbSearch;->getUserInfoFromDatabase()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVipEndTimeMills(Landroid/content/Context;)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 716
    const-wide/16 v0, 0x0

    .line 717
    .local v0, "endTimeMills":J
    const/4 v2, 0x0

    .line 719
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/readboy/provider/mhc/info/UserInfoVipConstant;->USER_INFO_VIP_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 720
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    const-string v3, "end_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "endTime":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/readboy/provider/UserDbSearch;->changeVipEndTimeMills(Ljava/lang/String;)J

    move-result-wide v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v4

    .line 727
    .end local v3
    :cond_0
    if-eqz v2, :cond_1

    .line 728
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 727
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 724
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 727
    .end local v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 731
    :cond_1
    :goto_1
    return-wide v0

    .line 727
    :goto_2
    if-eqz v2, :cond_2

    .line 728
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 730
    :cond_2
    throw v3
.end method

.method public getVipEndTimeSecond(Landroid/content/Context;)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 735
    const-wide/16 v0, 0x0

    .line 736
    .local v0, "endTimeMills":J
    const/4 v2, 0x0

    .line 738
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/readboy/provider/mhc/info/UserInfoVipConstant;->USER_INFO_VIP_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 739
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    const-string v3, "end_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "endTime":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/readboy/provider/UserDbSearch;->changeVipEndTimeSecond(Ljava/lang/String;)J

    move-result-wide v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v4

    .line 746
    .end local v3
    :cond_0
    if-eqz v2, :cond_1

    .line 747
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 746
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 743
    :catch_0
    move-exception v3

    .line 744
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 746
    .end local v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 750
    :cond_1
    :goto_1
    return-wide v0

    .line 746
    :goto_2
    if-eqz v2, :cond_2

    .line 747
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_2
    throw v3
.end method

.method public gradeDbIdToId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 660
    const/16 v0, 0x301

    if-lt p1, v0, :cond_0

    .line 661
    add-int/lit16 v0, p1, -0x2f8

    .local v0, "graInDbId":I
    goto :goto_0

    .line 663
    .end local v0
    :cond_0
    add-int/lit16 v0, p1, -0x201

    .line 665
    .restart local v0
    :goto_0
    return v0
.end method

.method public isVipUser(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "isVipUser":Z
    const/4 v1, 0x0

    .line 687
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/readboy/provider/mhc/info/UserInfoVipConstant;->USER_INFO_VIP_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 688
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    const-string v2, "uid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 690
    .local v2, "uid":I
    const-string v3, "vip_status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "state":Ljava/lang/String;
    const-string v4, "end_time"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "endTime":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 693
    .local v5, "isVipStatus":Z
    const-string v6, "2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 694
    .local v6, "isVipForeverStatus":Z
    if-lez v2, :cond_1

    .line 695
    if-eqz v6, :cond_0

    .line 696
    const/4 v0, 0x1

    goto :goto_0

    .line 697
    :cond_0
    if-eqz v5, :cond_1

    .line 698
    invoke-direct {p0, v4}, Lcom/readboy/provider/UserDbSearch;->changeVipEndTimeMills(Ljava/lang/String;)J

    move-result-wide v7

    .line 699
    .local v7, "endTimeValue":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v9, v7, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 700
    const/4 v0, 0x1

    .line 708
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 709
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 708
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 705
    :catch_0
    move-exception v2

    .line 706
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    .end local v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 712
    :cond_2
    :goto_2
    return v0

    .line 708
    :goto_3
    if-eqz v1, :cond_3

    .line 709
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 711
    :cond_3
    throw v2
.end method

.method public setShowDebugInfo(Z)V
    .locals 0
    .param p1, "showDebugInfo"    # Z

    .line 672
    iput-boolean p1, p0, Lcom/readboy/provider/UserDbSearch;->showDebugInfo:Z

    .line 673
    return-void
.end method

.method public startPersonalsetting(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/readboy/provider/UserDbSearch;->startPersonalsetting(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public startPersonalsetting(Landroid/content/Context;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isViewVipView"    # Z

    .line 776
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.readboy.personalsetting"

    const-string v2, "com.readboy.personalsetting.activity.LandingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .local v0, "componet":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 780
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 781
    const-string v2, "isViewVipView"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 786
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 787
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    .line 788
    :catch_0
    move-exception v2

    .line 789
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 791
    .end local v2
    const/4 v2, 0x0

    return v2
.end method
