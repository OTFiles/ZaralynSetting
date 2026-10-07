.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

.field private mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 61
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppLaunchSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/AppLaunchSettings;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method private buildStateDropDown()V
    .locals 7

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setShouldDisableView(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/AppDomainsPreference;->setShouldDisableView(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppDomainsPreference;->setEnabled(Z)V

    goto :goto_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    const v5, 0x7f120129

    .line 127
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f12012a

    .line 128
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f12012b

    .line 129
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 126
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 133
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    .line 131
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    iget-boolean v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "state":I
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    .line 144
    if-nez v0, :cond_1

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    nop

    .line 144
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    .end local v0
    :cond_2
    :goto_1
    return-void
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 186
    .local p2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 187
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 101
    const/high16 v3, 0x20000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    .local v1, "count":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 106
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v5, :cond_0

    .line 107
    const/4 v2, 0x1

    return v2

    .line 104
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3
    :cond_1
    return v2
.end method

.method private updateAppLinkState(I)Z
    .locals 6
    .param p1, "newState"    # I

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    return v1

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 167
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "priorState":I
    if-ne v2, p1, :cond_1

    .line 170
    return v1

    .line 173
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v3

    .line 174
    .local v3, "success":Z
    if-eqz v3, :cond_3

    .line 176
    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 177
    .local v4, "updatedState":I
    if-ne p1, v4, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v3, v1

    .line 178
    .end local v4
    goto :goto_0

    .line 179
    :cond_3
    const-string v1, "AppLaunchSettings"

    const-string v4, "Couldn\'t update intent verification status!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return v3
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 216
    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f150066

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    .line 77
    const-string v0, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppDomainsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    .line 78
    const-string v0, "app_launch_clear_defaults"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 79
    const-string v0, "app_link_state"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 91
    .local v2, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    array-length v4, v2

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppDomainsPreference;->setValues([I)V

    .line 94
    .end local v0
    .end local v1
    .end local v2
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->buildStateDropDown()V

    .line 95
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 194
    const/4 v0, 0x1

    return v0
.end method
