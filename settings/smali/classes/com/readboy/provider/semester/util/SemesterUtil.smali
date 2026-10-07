.class public Lcom/readboy/provider/semester/util/SemesterUtil;
.super Ljava/lang/Object;
.source "SemesterUtil.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.readboy.personal.personalProvider"

.field public static final BASE_CONFIG_SEMESTER_TIME_DATA:Ljava/lang/String; = "SemesterTimeData"

.field public static final BASE_CONFIG_SEMESTER_UPDATE_TIME_DATA:Ljava/lang/String; = "SemesterUpdateTimeData"

.field public static final BASE_CONFIG_TABLE:Ljava/lang/String; = "base_config_data"

.field public static final BASE_CONFIG_URI:Landroid/net/Uri;

.field public static TYPE_AUTO_FIRST_TERM_TIME:I

.field public static TYPE_AUTO_SECOND_TERM_TIME:I

.field public static TYPE_AUTO_SKIP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_SKIP:I

    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_SECOND_TERM_TIME:I

    .line 24
    const/4 v0, 0x2

    sput v0, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_FIRST_TERM_TIME:I

    .line 30
    const-string v0, "content://com.readboy.personal.personalProvider/base_config_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/semester/util/SemesterUtil;->BASE_CONFIG_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseConfigSemesterTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    if-nez p0, :cond_0

    .line 135
    const-string v0, ""

    return-object v0

    .line 137
    :cond_0
    const-string v0, ""

    .line 138
    .local v0, "semesterTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 139
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    move-object v8, v1

    .line 141
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/readboy/provider/semester/util/SemesterUtil;->BASE_CONFIG_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 142
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string v1, "SemesterTimeData"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 148
    :cond_1
    if-eqz v8, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 149
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 150
    const/4 v8, 0x0

    .line 153
    :cond_2
    return-object v0

    .line 148
    :goto_1
    if-eqz v8, :cond_3

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 150
    const/4 v8, 0x0

    .line 152
    :cond_3
    throw v1
.end method

.method public static getBaseConfigSemesterUpdateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 163
    if-nez p0, :cond_0

    .line 164
    const-string v0, ""

    return-object v0

    .line 166
    :cond_0
    const-string v0, ""

    .line 167
    .local v0, "semesterUpdateTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 168
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    move-object v8, v1

    .line 170
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/readboy/provider/semester/util/SemesterUtil;->BASE_CONFIG_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 171
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "SemesterUpdateTimeData"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 177
    :cond_1
    if-eqz v8, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .end local v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 178
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v8, 0x0

    .line 182
    :cond_2
    return-object v0

    .line 177
    :goto_1
    if-eqz v8, :cond_3

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v8, 0x0

    .line 181
    :cond_3
    throw v1
.end method

.method public static getDefaultFirstTermTime()J
    .locals 2

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/readboy/provider/semester/util/SemesterUtil;->getDefaultFirstTermTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultFirstTermTime(I)J
    .locals 3
    .param p0, "year"    # I

    .line 105
    new-instance v0, Lcom/readboy/provider/semester/bean/Solar;

    const/4 v1, 0x7

    const/16 v2, 0x10

    invoke-direct {v0, p0, v1, v2}, Lcom/readboy/provider/semester/bean/Solar;-><init>(III)V

    invoke-virtual {v0}, Lcom/readboy/provider/semester/bean/Solar;->toTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultSecondTermTime()J
    .locals 2

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/readboy/provider/semester/util/SemesterUtil;->getDefaultSecondTermTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultSecondTermTime(I)J
    .locals 3
    .param p0, "year"    # I

    .line 124
    new-instance v0, Lcom/readboy/provider/semester/bean/Lunar;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/readboy/provider/semester/bean/Lunar;-><init>(III)V

    invoke-virtual {v0}, Lcom/readboy/provider/semester/bean/Lunar;->toSolarTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPersonalsettingPkgName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "com.readboy.personalsetting"

    return-object v0
.end method

.method public static getPersonalsettingSupportVersionCode()I
    .locals 1

    .line 37
    const v0, 0xbf802b9

    return v0
.end method

.method public static getSemesterChangeType(Landroid/content/Context;IJ)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "currentTimeMillis"    # J

    .line 45
    invoke-static {p0, p1}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->parse(Landroid/content/Context;I)Lcom/readboy/provider/semester/bean/SemesterTimeData;

    move-result-object v0

    .line 46
    .local v0, "semesterTimeData":Lcom/readboy/provider/semester/bean/SemesterTimeData;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/readboy/provider/semester/bean/SemesterTimeData;->getTermTypeDialog(JZZ)I

    move-result v1

    .line 47
    .local v1, "type":I
    return v1
.end method

.method public static getSemesterChangeType(Landroid/content/Context;J)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentTimeMillis"    # J

    .line 41
    invoke-static {p0}, Lcom/readboy/provider/semester/util/SemesterUtil;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/readboy/provider/semester/util/SemesterUtil;->getSemesterChangeType(Landroid/content/Context;IJ)I

    move-result v0

    return v0
.end method

.method private static getUserId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 193
    invoke-static {p0}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    .line 194
    .local v0, "userBaseInfo":Lcom/readboy/provider/mhc/info/UserBaseInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 195
    .local v1, "uid":I
    :goto_0
    return v1
.end method

.method public static openSemesterChangeDialog(Landroid/content/Context;IJ)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "currentTimeMillis"    # J

    .line 55
    if-lez p1, :cond_0

    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/readboy/provider/semester/util/SemesterUtil;->getSemesterChangeType(Landroid/content/Context;IJ)I

    move-result v0

    .line 57
    .local v0, "type":I
    sget v1, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_SECOND_TERM_TIME:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/readboy/provider/semester/util/SemesterUtil;->TYPE_AUTO_FIRST_TERM_TIME:I

    if-gt v0, v1, :cond_0

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, "sIntent":Landroid/content/Intent;
    const-string v2, "android.readboy.personalsetting.SEMESTER_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v2, "autoTermType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lcom/readboy/provider/semester/util/SemesterUtil;->getPersonalsettingPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static openSemesterChangeDialog(Landroid/content/Context;J)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentTimeMillis"    # J

    .line 51
    invoke-static {p0}, Lcom/readboy/provider/semester/util/SemesterUtil;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/readboy/provider/semester/util/SemesterUtil;->openSemesterChangeDialog(Landroid/content/Context;IJ)Z

    move-result v0

    return v0
.end method

.method public static requestChangeBookTime(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/readboy/provider/semester/util/SemesterUtil;->requestChangeBookTime(Landroid/content/Context;II)V

    .line 75
    return-void
.end method

.method public static requestChangeBookTime(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "retryCount"    # I
    .param p2, "retryDelay"    # I

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PS_REQUEST_CHANGE_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "retryCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "retryDelay"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
