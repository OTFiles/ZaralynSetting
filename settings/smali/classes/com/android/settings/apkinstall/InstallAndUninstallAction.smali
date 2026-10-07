.class public Lcom/android/settings/apkinstall/InstallAndUninstallAction;
.super Ljava/lang/Object;
.source "InstallAndUninstallAction.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPInstaller:Landroid/content/pm/PackageInstaller;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "InstallAndUninstallAction"

    iput-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mSessionId:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPM:Landroid/content/pm/PackageManager;

    .line 42
    iget-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPInstaller:Landroid/content/pm/PackageInstaller;

    .line 45
    return-void
.end method

.method private execInstallAPP(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "intentCallback"    # Landroid/app/PendingIntent;

    .line 151
    iget-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    const-string v1, "--------------------->execInstallAPP()<------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPInstaller:Landroid/content/pm/PackageInstaller;

    iget v2, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mSessionId:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v1

    move-object v0, v1

    .line 155
    if-nez p3, :cond_0

    .line 156
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v2, "android.content.pm.extra.STATUS_INSTALL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v2, "install_path"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object p3, v2

    .line 162
    .end local v1
    :cond_0
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 166
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 168
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 163
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    .end local v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 170
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    goto :goto_1

    .line 169
    :catch_2
    move-exception v1

    .line 171
    :goto_1
    const/4 v0, 0x0

    .line 174
    :cond_1
    return-void

    .line 166
    :goto_2
    if-eqz v0, :cond_2

    .line 168
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 170
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 169
    :catch_3
    move-exception v2

    .line 171
    :goto_3
    const/4 v0, 0x0

    :cond_2
    throw v1
.end method

.method private onTransfesApkFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkFilePath"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    const-string v1, "---------->onTransfesApkFile()<---------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 111
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 112
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v3, 0x0

    move v4, v3

    .line 114
    .local v4, "success":Z
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v5, "apkFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPInstaller:Landroid/content/pm/PackageInstaller;

    iget v7, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mSessionId:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v6

    move-object v2, v6

    .line 116
    const-string v8, "base.apk"

    const-wide/16 v9, 0x0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v6

    move-object v1, v6

    .line 117
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "total":I
    const/high16 v7, 0x100000

    new-array v7, v7, [B

    .line 120
    .local v7, "buffer":[B
    :goto_0
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "c":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    .line 121
    add-int/2addr v6, v9

    .line 122
    invoke-virtual {v1, v7, v3, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "streamed "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bytes"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    .line 130
    .end local v5
    .end local v6
    .end local v7
    .end local v9
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 134
    :cond_1
    if-eqz v1, :cond_2

    .line 135
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 140
    :catch_0
    move-exception v3

    goto :goto_2

    .line 137
    :cond_2
    :goto_1
    nop

    .line 138
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 140
    :goto_2
    nop

    .line 141
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    .end local v3
    goto :goto_4

    .line 142
    :cond_3
    :goto_3
    goto :goto_4

    .line 130
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 127
    :catch_1
    move-exception v3

    .line 128
    .restart local v3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    .end local v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 134
    :cond_4
    if-eqz v1, :cond_5

    .line 135
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 137
    :cond_5
    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 144
    :goto_4
    return v4

    .line 130
    :goto_5
    if-eqz v2, :cond_6

    .line 131
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 134
    :cond_6
    if-eqz v1, :cond_7

    .line 135
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .line 140
    :catch_2
    move-exception v5

    goto :goto_7

    .line 137
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 138
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 140
    :goto_7
    nop

    .line 141
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5
    nop

    .line 142
    :cond_8
    :goto_8
    throw v3
.end method


# virtual methods
.method public installApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "intentCallback"    # Landroid/app/PendingIntent;

    .line 68
    iget-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installApp()------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x5

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 75
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 76
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 77
    .local v2, "packageName":Ljava/lang/String;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 78
    .local v3, "versionCode":I
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 79
    .local v4, "versionName":Ljava/lang/String;
    const-string v5, "ApkActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", versionCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", versionName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v2
    .end local v3
    .end local v4
    :cond_1
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 83
    .local v2, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget-object v3, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apkFile length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mSessionId:I

    .line 90
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    .end local v3
    :goto_0
    iget-object v3, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sessionId---->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v3, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mSessionId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->onTransfesApkFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 95
    .local v3, "copySuccess":Z
    iget-object v4, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copySuccess---->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v3, :cond_2

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->execInstallAPP(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 100
    .end local v3
    :cond_2
    return-void
.end method

.method public uninstallApp(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intentCallback"    # Landroid/app/PendingIntent;

    .line 53
    if-nez p3, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "android.content.pm.extra.STATUS_UNINSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "uninstall_pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 60
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/apkinstall/InstallAndUninstallAction;->mPInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 61
    return-void
.end method
