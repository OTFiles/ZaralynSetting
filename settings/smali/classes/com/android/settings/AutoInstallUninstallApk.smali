.class public Lcom/android/settings/AutoInstallUninstallApk;
.super Landroid/app/Activity;
.source "AutoInstallUninstallApk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private btnInstall:Landroid/widget/Button;

.field private btnUninstall:Landroid/widget/Button;

.field private mDate:Ljava/util/Date;

.field private mListFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchTextView:Landroid/widget/TextView;

.field private switchAllApp:Landroid/widget/Switch;

.field private switchWifiPwdLooker:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, "AutoInstallUninstallApk"

    iput-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->mListFiles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AutoInstallUninstallApk;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoInstallUninstallApk;

    .line 25
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->btnInstall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AutoInstallUninstallApk;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AutoInstallUninstallApk;

    .line 25
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->btnUninstall:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public GetAllFiles(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "Path"    # Ljava/lang/String;
    .param p2, "Extension"    # Ljava/lang/String;
    .param p3, "IsIterative"    # Z

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 163
    aget-object v2, v0, v1

    .line 164
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/settings/AutoInstallUninstallApk;->mListFiles:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    if-nez p3, :cond_2

    .line 170
    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/settings/AutoInstallUninstallApk;->GetAllFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    .end local v2
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1
    :cond_3
    :goto_1
    return-void
.end method

.method public getApkPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 194
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 195
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 196
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 197
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 198
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v3

    .line 200
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 181
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchAllApp:Landroid/widget/Switch;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->mSwitchTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v2, 0x7f12044e

    goto :goto_0

    :cond_0
    const v2, 0x7f12044d

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/AutoInstallUninstallApk;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "frozen_all_app_include_system_app_danger"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string v2, "frozen all app is on"

    goto :goto_1

    :cond_1
    const-string v2, "frozen all app is off"

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchWifiPwdLooker:Landroid/widget/Switch;

    if-ne p1, v0, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/AutoInstallUninstallApk;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_wifi_password_looker"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    if-eqz p2, :cond_3

    const-string v2, "display wifi pwd is on"

    goto :goto_2

    :cond_3
    const-string v2, "display wifi pwd is off"

    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 190
    :cond_4
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 91
    if-nez p1, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0092

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 95
    const-string v0, ""

    const-string v1, "======divhee===========btnInstall======start==="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    nop

    .local v2, "inum":I
    :goto_0
    move v0, v2

    .end local v2
    .local v0, "inum":I
    iget-object v1, p0, Lcom/android/settings/AutoInstallUninstallApk;->mListFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 97
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======divhee===========btnInstall======path==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/AutoInstallUninstallApk;->mListFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AutoInstallUninstallApk;->mListFiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->MyTaskInstallAction(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v2, v0, 0x1

    .end local v0
    .restart local v2
    goto :goto_0

    .line 120
    .end local v2
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const v1, 0x7f120718

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 121
    const-string v0, ""

    const-string v1, "======divhee===========btnInstall======end==="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0093

    if-ne v0, v1, :cond_5

    .line 123
    const-string v0, ""

    const-string v1, "======divhee===========btnUninstall======start==="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    nop

    .restart local v2
    :goto_1
    move v0, v2

    .end local v2
    .restart local v0
    iget-object v1, p0, Lcom/android/settings/AutoInstallUninstallApk;->mListFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/android/settings/AutoInstallUninstallApk;->mListFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/AutoInstallUninstallApk;->getApkPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "pck":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======divhee===========btnInstall======pck==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/SettingsApp;->MyTaskUninstallAction(Ljava/lang/String;)V

    .line 124
    .end local v1
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .end local v0
    .restart local v2
    goto :goto_1

    .line 149
    .end local v2
    :cond_4
    const-string v0, ""

    const-string v1, "======divhee===========btnUninstall======end==="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const v1, 0x7f120ee1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 152
    :cond_5
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoInstallUninstallApk;->setContentView(I)V

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->mDate:Ljava/util/Date;

    .line 44
    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoInstallUninstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->btnInstall:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->btnInstall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Lcom/android/settings/AutoInstallUninstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->btnUninstall:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/android/settings/AutoInstallUninstallApk;->btnUninstall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/AutoInstallUninstallApk;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frozen_all_app_include_system_app_danger"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 49
    .local v0, "isFrozenEnable":Z
    :goto_0
    const v3, 0x7f0a047b

    invoke-virtual {p0, v3}, Lcom/android/settings/AutoInstallUninstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/AutoInstallUninstallApk;->mSwitchTextView:Landroid/widget/TextView;

    .line 50
    iget-object v3, p0, Lcom/android/settings/AutoInstallUninstallApk;->mSwitchTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v4, 0x7f12044e

    goto :goto_1

    :cond_1
    const v4, 0x7f12044d

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 51
    const v3, 0x7f0a0439

    invoke-virtual {p0, v3}, Lcom/android/settings/AutoInstallUninstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchAllApp:Landroid/widget/Switch;

    .line 52
    iget-object v3, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchAllApp:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 53
    iget-object v3, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchAllApp:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/AutoInstallUninstallApk;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_wifi_password_looker"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 56
    .local v1, "isWifiPwdLooker":Z
    :goto_2
    const v2, 0x7f0a043b

    invoke-virtual {p0, v2}, Lcom/android/settings/AutoInstallUninstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchWifiPwdLooker:Landroid/widget/Switch;

    .line 57
    iget-object v2, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchWifiPwdLooker:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 58
    iget-object v2, p0, Lcom/android/settings/AutoInstallUninstallApk;->switchWifiPwdLooker:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/settings/SettingsApp;->showPasswordDialog(Landroid/app/Activity;)V

    .line 62
    new-instance v2, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/AutoInstallUninstallApk$SimpleAsyncTask;-><init>(Lcom/android/settings/AutoInstallUninstallApk;Lcom/android/settings/AutoInstallUninstallApk$1;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
