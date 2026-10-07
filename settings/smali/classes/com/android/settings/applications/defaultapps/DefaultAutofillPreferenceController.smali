.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultAutofillPreferenceController.java"


# instance fields
.field private final mAutofillManager:Landroid/view/autofill/AutofillManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    .line 36
    return-void
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "flattenComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mUserId:I

    .line 67
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    .line 68
    .local v1, "appInfo":Lcom/android/settingslib/applications/DefaultAppInfo;
    return-object v1

    .line 70
    .end local v1
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "default_autofill"

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Lcom/android/settingslib/applications/DefaultAppInfo;

    .line 52
    if-nez p1, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .local v0, "intentProvider":Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    .line 41
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    .line 42
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method
