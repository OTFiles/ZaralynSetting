.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;,
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    }
.end annotation


# static fields
.field static final AUTOFILL_PROBE:Landroid/content/Intent;


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 124
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    return-void
.end method

.method private addAddServicePreference()V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 183
    .local v0, "addNewServicePreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public static getDefaultKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 215
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 216
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 220
    .end local v1
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$onCreate$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    return-void
.end method

.method private newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;
    .locals 4

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service_search_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "searchUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 167
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    .local v1, "addNewServiceIntent":Landroid/content/Intent;
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 169
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f120a47

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 170
    const v3, 0x7f08019d

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 171
    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 172
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 174
    return-object v2
.end method

.method private update()V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->updateCandidates()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->addAddServicePreference()V

    .line 147
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v2, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 194
    .local v2, "context":Landroid/content/Context;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 195
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 196
    .local v5, "permission":Ljava/lang/String;
    const-string v6, "android.permission.BIND_AUTOFILL_SERVICE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    new-instance v6, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v8, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v2, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    const-string v6, "android.permission.BIND_AUTOFILL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    const-string v6, "DefaultAutofillPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AutofillService from \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' uses unsupported permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "android.permission.BIND_AUTOFILL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". It works for now, but might not be supported on future releases"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v6, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v8, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v2, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v4
    .end local v5
    :cond_1
    goto :goto_0

    .line 209
    :cond_2
    return-object v0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "appInfo"    # Lcom/android/settingslib/widget/CandidateInfo;

    .line 230
    if-nez p1, :cond_0

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 234
    .local v0, "appName":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 113
    const/16 v0, 0x318

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 108
    const v0, 0x7f15003d

    return v0
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1
    .param p1, "selectedKey"    # Ljava/lang/String;
    .param p2, "confirmationMessage"    # Ljava/lang/CharSequence;

    .line 84
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;-><init>()V

    .line 86
    .local v0, "fragment":Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->init(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 87
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 70
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$83FPzHGzIc3oGHojfgRT8534BXQ;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$83FPzHGzIc3oGHojfgRT8534BXQ;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 152
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onDestroy()V

    .line 153
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 250
    :cond_0
    const/4 v2, 0x0

    .line 251
    .local v2, "result":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 252
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 255
    .end local v1
    .end local v2
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method
