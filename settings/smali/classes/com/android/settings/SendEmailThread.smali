.class public Lcom/android/settings/SendEmailThread;
.super Ljava/lang/Thread;
.source "SendEmailThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SendEmailThread$OnSendEmailEvent;
    }
.end annotation


# instance fields
.field private mEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

.field private mInnerEspEmailID:Ljava/lang/String;

.field private mLogContent:Ljava/lang/String;

.field private mLogFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/settings/SendEmailThread$OnSendEmailEvent;Ljava/lang/String;)V
    .locals 1
    .param p1, "logContent"    # Ljava/lang/String;
    .param p2, "emailEvent"    # Lcom/android/settings/SendEmailThread$OnSendEmailEvent;
    .param p3, "filePath"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput-object p3, p0, Lcom/android/settings/SendEmailThread;->mLogFilePath:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/settings/SendEmailThread;->mEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SendEmailThread;->mInnerEspEmailID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/settings/SendEmailThread$OnSendEmailEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logContent"    # Ljava/lang/String;
    .param p2, "emailEvent"    # Lcom/android/settings/SendEmailThread$OnSendEmailEvent;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "extraEmailID"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    iput-object p3, p0, Lcom/android/settings/SendEmailThread;->mLogFilePath:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/android/settings/SendEmailThread;->mEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    .line 56
    iput-object p4, p0, Lcom/android/settings/SendEmailThread;->mInnerEspEmailID:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static getLogcatInfo()Ljava/lang/String;
    .locals 7

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, "strLogcatInfo":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move-object v2, v1

    .line 283
    .local v2, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v3, "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "logcat"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v4, "-d"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v4, "*:V"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v2, v4

    .line 292
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 294
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    nop

    .line 295
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    if-eqz v5, :cond_0

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 303
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 314
    .end local v1
    .end local v3
    .end local v4
    if-eqz v2, :cond_3

    .line 315
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_6

    .line 313
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 304
    :catch_0
    move-exception v1

    .line 306
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 307
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 313
    .end local v1
    :goto_1
    nop

    .line 314
    if-eqz v2, :cond_1

    .line 315
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 318
    :catch_1
    move-exception v3

    goto :goto_3

    .line 317
    :cond_1
    :goto_2
    const/4 v2, 0x0

    .line 319
    :goto_3
    throw v1

    .line 310
    .restart local v1
    :catch_2
    move-exception v3

    .end local v1
    goto :goto_5

    .line 309
    .restart local v1
    :cond_2
    :goto_4
    const/4 v2, 0x0

    .line 311
    nop

    .line 314
    .end local v1
    :goto_5
    if-eqz v2, :cond_3

    .line 315
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 318
    :catch_3
    move-exception v1

    .line 320
    goto :goto_7

    .line 317
    :cond_3
    :goto_6
    const/4 v2, 0x0

    .line 319
    nop

    .line 321
    :goto_7
    const-string v1, "\r\n====logcat over====\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getNowPadInfoAndAppsInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 172
    .local v1, "nowSb":Ljava/lang/StringBuilder;
    const-string v0, "\u5e8f \u5217 \u53f7\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :try_start_0
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    :goto_0
    const-string v0, "\r\n\u673a    \u578b\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :try_start_1
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    .line 182
    :goto_1
    const-string v0, "\r\n\u56fa\u4ef6\u7248\u672c\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :try_start_2
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 185
    :catch_2
    move-exception v0

    .line 187
    :goto_2
    const-string v0, "\r\n\u8f6f\u4ef6\u7248\u672c\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :try_start_3
    const-string v0, "ro.product.readboy.software"

    const-string v2, "unknow"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 190
    :catch_3
    move-exception v0

    .line 192
    :goto_3
    const-string v0, "\r\n\u786c\u4ef6\u7248\u672c\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :try_start_4
    const-string v0, "ro.product.hardware.version"

    const-string v2, "unknow"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 195
    :catch_4
    move-exception v0

    .line 197
    :goto_4
    const-string v0, "\r\n\u5185\u6838\u7248\u672c\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05004a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v2, p1

    :try_start_6
    invoke-static {v2, v0}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 200
    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v2, p1

    .line 202
    :goto_5
    const-string v0, "\r\n\u5185\u5b58\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :try_start_7
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getRomTotalSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    .line 205
    :catch_7
    move-exception v0

    .line 207
    :goto_6
    const-string v0, ";\r\n\u5b58\u50a8\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :try_start_8
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getSDTotalSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    .line 210
    :catch_8
    move-exception v0

    .line 212
    :goto_7
    const-string v0, ";\r\n\u4e2a\u4eba\u4fe1\u606f\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "mUserInfo":Lcom/readboy/provider/mhc/info/UserBaseInfo;
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object v3

    .line 216
    .local v3, "mUserDbSearch":Lcom/readboy/provider/UserDbSearch;
    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v3}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v4

    move-object v0, v4

    .line 219
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_1
    const-string v4, "not login in personal center"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .end local v0
    .end local v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    .line 220
    :catch_9
    move-exception v0

    .line 222
    :goto_9
    const-string v0, ";\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :try_start_a
    const-string v0, "\r\n=====================\u5e94\u7528\u4fe1\u606f================================\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v3, v0

    .line 227
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 228
    .local v4, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .local v0, "inum":I
    :goto_a
    move v5, v0

    .end local v0
    .local v5, "inum":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    if-ge v5, v0, :cond_2

    .line 230
    :try_start_b
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 232
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 233
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 234
    .local v7, "strAppName":Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 235
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 237
    .local v9, "applicationName":Ljava/lang/String;
    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 238
    .local v10, "firstInstallTime":J
    iget v12, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 239
    .local v12, "versionCode":I
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 240
    .local v13, "versionName":Ljava/lang/String;
    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 242
    .local v14, "lastUpdateTime":J
    move-object/from16 v16, v0

    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .end local v0
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v12
    .end local v13
    .end local v14
    .end local v16
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_b

    .line 266
    :catch_a
    move-exception v0

    .line 228
    :goto_b
    add-int/lit8 v0, v5, 0x1

    .end local v5
    .local v0, "inum":I
    move-object/from16 v2, p1

    goto/16 :goto_a

    .line 271
    .end local v0
    .end local v3
    .end local v4
    :cond_2
    goto :goto_c

    .line 269
    :catch_b
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====divhee=======email===getAllAppInfoFail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0
    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 12

    .line 66
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 69
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/apache/commons/mail/HtmlEmail;

    invoke-direct {v1}, Lorg/apache/commons/mail/HtmlEmail;-><init>()V

    .line 71
    .local v1, "email":Lorg/apache/commons/mail/HtmlEmail;
    const-string v2, "smtp.qq.com"

    invoke-virtual {v1, v2}, Lorg/apache/commons/mail/HtmlEmail;->setHostName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Lorg/apache/commons/mail/HtmlEmail;->setTLS(Z)V

    .line 73
    invoke-virtual {v1, v0}, Lorg/apache/commons/mail/HtmlEmail;->setSSL(Z)V

    .line 76
    const-string v2, "465"

    invoke-virtual {v1, v2}, Lorg/apache/commons/mail/HtmlEmail;->setSslSmtpPort(Ljava/lang/String;)V

    .line 79
    const-string v2, "gbk"

    invoke-virtual {v1, v2}, Lorg/apache/commons/mail/HtmlEmail;->setCharset(Ljava/lang/String;)V

    .line 81
    const-string v2, "202467781@qq.com"

    invoke-virtual {v1, v2}, Lorg/apache/commons/mail/HtmlEmail;->addTo(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 86
    iget-object v2, p0, Lcom/android/settings/SendEmailThread;->mInnerEspEmailID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/settings/SendEmailThread;->mInnerEspEmailID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/commons/mail/HtmlEmail;->addCc(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 90
    :cond_0
    const-string v2, "287622085@qq.com"

    invoke-virtual {v1, v2}, Lorg/apache/commons/mail/HtmlEmail;->setFrom(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 92
    const-string v2, "287622085@qq.com"

    const-string v3, "hipldtkvlfqlbhdd"

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/mail/HtmlEmail;->setAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 98
    .local v3, "date":Ljava/util/Date;
    const-string v4, "LogsFrom:[%s][%s][%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->formatModelName()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "onlySingleTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SendEmailThread;->mInnerEspEmailID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadboyTester_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 100
    .local v5, "nowSendEmailTitle":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v5}, Lorg/apache/commons/mail/HtmlEmail;->setSubject(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 103
    const-string v6, "%s\r\n\r\n======================================================\r\n\r\n"

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v4, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/commons/mail/HtmlEmail;->setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 107
    :try_end_0
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v6, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    new-instance v6, Ljavax/mail/util/ByteArrayDataSource;

    iget-object v8, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "txt/xml"

    invoke-direct {v6, v8, v9}, Ljavax/mail/util/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_Logs1.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Document description"

    const-string v10, "attachment"

    invoke-virtual {v1, v6, v8, v9, v10}, Lorg/apache/commons/mail/HtmlEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    .line 111
    const-string v6, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--0---divhee--------LogContent----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_2
    goto :goto_2

    .line 113
    :catch_0
    move-exception v6

    .line 114
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "========divhee============mLogContent==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v6
    :try_end_2
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/settings/SendEmailThread;->mLogFilePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 119
    new-instance v6, Lorg/apache/commons/mail/EmailAttachment;

    invoke-direct {v6}, Lorg/apache/commons/mail/EmailAttachment;-><init>()V

    .line 120
    .local v6, "attachment":Lorg/apache/commons/mail/EmailAttachment;
    iget-object v8, p0, Lcom/android/settings/SendEmailThread;->mLogFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lorg/apache/commons/mail/EmailAttachment;->setPath(Ljava/lang/String;)V

    .line 121
    const-string v8, "attachment"

    invoke-virtual {v6, v8}, Lorg/apache/commons/mail/EmailAttachment;->setDisposition(Ljava/lang/String;)V

    .line 122
    const-string v8, "Document description"

    invoke-virtual {v6, v8}, Lorg/apache/commons/mail/EmailAttachment;->setDescription(Ljava/lang/String;)V

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_Logcat2.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/mail/EmailAttachment;->setName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v6}, Lorg/apache/commons/mail/HtmlEmail;->attach(Lorg/apache/commons/mail/EmailAttachment;)Lorg/apache/commons/mail/MultiPartEmail;

    .line 128
    .end local v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    goto :goto_4

    .line 126
    :catch_1
    move-exception v6

    .line 127
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/settings/SendEmailThread;->mLogFilePath:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/SendEmailThread;->mLogFilePath:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_3

    :cond_5
    move v10, v7

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "========divhee============mLogFilePath==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v6
    :try_end_4
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    const/4 v6, 0x0

    .line 132
    .local v6, "padInfo":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/SendEmailThread;->getNowPadInfoAndAppsInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 133
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 134
    new-instance v8, Ljavax/mail/util/ByteArrayDataSource;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "txt/xml"

    invoke-direct {v8, v9, v10}, Ljavax/mail/util/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_padInfo3.txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Document description"

    const-string v11, "attachment"

    invoke-virtual {v1, v8, v9, v10, v11}, Lorg/apache/commons/mail/HtmlEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    .line 137
    const-string v8, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--0---divhee--------pad_Info----"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    goto :goto_5

    .line 139
    :catch_2
    move-exception v8

    .line 140
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    nop

    :cond_7
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "========divhee============padInfo==="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v8
    :goto_5
    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail;->send()Ljava/lang/String;

    .line 146
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--0---divhee--------end1----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v7, p0, Lcom/android/settings/SendEmailThread;->mEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    if-eqz v7, :cond_8

    .line 150
    iget-object v7, p0, Lcom/android/settings/SendEmailThread;->mEmailEvent:Lcom/android/settings/SendEmailThread$OnSendEmailEvent;

    iget-object v8, p0, Lcom/android/settings/SendEmailThread;->mInnerEspEmailID:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Lcom/android/settings/SendEmailThread$OnSendEmailEvent;->onSendEnd(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :try_end_6
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_6

    .line 157
    :catch_3
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--2---divhee--------error---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--2---divhee--------error---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .end local v1
    goto :goto_7

    .line 152
    :catch_4
    move-exception v1

    .line 154
    .local v1, "e":Lorg/apache/commons/mail/EmailException;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--1---divhee--------error---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Lorg/apache/commons/mail/EmailException;->printStackTrace()V

    .line 156
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/SendEmailThread;->mLogContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--1---divhee--------error---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/mail/EmailException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 162
    .end local v1
    :cond_8
    :goto_6
    nop

    .line 163
    :goto_7
    return-void
.end method
