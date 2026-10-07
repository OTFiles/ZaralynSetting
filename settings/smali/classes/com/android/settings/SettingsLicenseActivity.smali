.class public Lcom/android/settings/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isFilePathValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .line 136
    const v0, 0x7f120cc7

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 139
    return-void
.end method

.method private showGeneratedHtmlFile(Ljava/io/File;)V
    .locals 2
    .param p1, "generatedHtmlFile"    # Ljava/io/File;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->getUriFromGeneratedHtmlFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->showHtmlFromUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 92
    :cond_0
    const-string v0, "SettingsLicenseActivity"

    const-string v1, "Failed to generate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 95
    :goto_0
    return-void
.end method

.method private showHtmlFromDefaultXmlFiles()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 80
    return-void
.end method

.method private showHtmlFromUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/html"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f120cc6

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    :cond_0
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "com.android.htmlviewer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 132
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SettingsLicenseActivity"

    const-string v3, "Failed to find viewer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 133
    .end local v1
    :goto_0
    return-void
.end method

.method private showSelectedFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "SettingsLicenseActivity"

    const-string v1, "The system property for the license file is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 101
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->isFileValid(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const-string v1, "SettingsLicenseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "License file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 108
    return-void

    .line 110
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsLicenseActivity;->showHtmlFromUri(Landroid/net/Uri;)V

    .line 111
    return-void
.end method


# virtual methods
.method getUriFromGeneratedHtmlFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p1, "generatedHtmlFile"    # Ljava/io/File;

    .line 84
    const-string v0, "com.android.settings.files"

    invoke-static {p0, v0, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method isFileValid(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "ro.config.license_path"

    const-string v1, "/system/etc/NOTICE.html.gz"

    .line 56
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "licenseHtmlPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->isFilePathValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->showSelectedFile(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showHtmlFromDefaultXmlFiles()V

    .line 62
    :goto_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/android/settingslib/license/LicenseHtmlLoader;

    invoke-direct {v0, p0}, Lcom/android/settingslib/license/LicenseHtmlLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/io/File;)V
    .locals 0
    .param p2, "generatedHtmlFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 71
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/io/File;>;"
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsLicenseActivity;->showGeneratedHtmlFile(Ljava/io/File;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsLicenseActivity;->onLoadFinished(Landroid/content/Loader;Ljava/io/File;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/io/File;>;"
    return-void
.end method
