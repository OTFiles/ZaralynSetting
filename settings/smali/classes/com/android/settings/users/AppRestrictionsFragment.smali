.class public Lcom/android/settings/users/AppRestrictionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Landroid/support/v7/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field protected mRestrictedProfile:Z

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 105
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/AppRestrictionsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment;

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/users/AppRestrictionsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment;

    .line 69
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment;
    .param p1, "x1"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment;
    .param p1, "x1"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment;

    .line 69
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method private addLocationAppRestrictionsPreference(Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 5
    .param p1, "app"    # Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    .param p2, "p"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 451
    iget-object v0, p1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 452
    .local v0, "packageName":Ljava/lang/String;
    const v1, 0x7f0801e5

    invoke-virtual {p2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(I)V

    .line 453
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 454
    nop

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 454
    invoke-static {v1, v2}, Lcom/android/settings/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 456
    .local v1, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    .line 457
    .local v3, "locationRestriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 459
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 461
    invoke-virtual {p2, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 462
    invoke-virtual {p2, p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    const/16 v2, 0x64

    invoke-virtual {p2, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 464
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 465
    return-void
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "choiceEntries"    # [Ljava/lang/String;
    .param p2, "choiceValues"    # [Ljava/lang/String;
    .param p3, "selectedString"    # Ljava/lang/String;

    .line 772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 773
    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    aget-object v1, p1, v0

    return-object v1

    .line 772
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    .end local v0
    :cond_1
    return-object p3
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2
    .param p1, "preference"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 736
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 737
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "app"    # Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 432
    iget-object v0, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v0, :cond_1

    .line 433
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 434
    const v0, 0x7f120150

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v3, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    const v0, 0x7f120fc7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v3, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 440
    const v0, 0x7f12014f

    invoke-virtual {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .line 337
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 338
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 339
    .local v1, "flags":I
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 341
    .local v2, "privateFlags":I
    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method private static isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 446
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .line 332
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    .line 333
    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 332
    :cond_0
    return v0
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 576
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 583
    .end local v0
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    .line 585
    :cond_1
    return-void
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 295
    invoke-direct {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 296
    .local v2, "pref":Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v2, :cond_0

    return-void

    .line 298
    :cond_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 299
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 300
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    .line 302
    :cond_3
    return-void
.end method

.method private onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "preference"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .line 669
    .local p2, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 671
    const/4 v0, 0x1

    .line 672
    .local v0, "count":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    .line 673
    .local v2, "entry":Landroid/content/RestrictionEntry;
    const/4 v3, 0x0

    .line 674
    .local v3, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 697
    :pswitch_0    # 0x4
    new-instance v4, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    .line 698
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 699
    move-object v4, v3

    check-cast v4, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 700
    move-object v4, v3

    check-cast v4, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 701
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 702
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 703
    move-object v5, v3

    check-cast v5, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 704
    move-object v5, v3

    check-cast v5, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 705
    goto :goto_1

    .line 683
    .end local v4
    :pswitch_1    # 0x3 0x2
    new-instance v4, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    .line 684
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 687
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 689
    :cond_0
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 691
    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 692
    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 693
    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 694
    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 695
    goto :goto_1

    .line 676
    .end local v4
    :pswitch_2    # 0x1
    new-instance v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    .line 677
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 679
    move-object v4, v3

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 680
    nop

    .line 709
    :goto_1
    if-eqz v3, :cond_1

    .line 710
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 711
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pkg_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 715
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 716
    invoke-virtual {v3, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 717
    const v4, 0x7f0800f6

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 718
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v0, v0, 0x1

    .line 721
    .end local v2
    .end local v3
    :cond_1
    goto/16 :goto_0

    .line 722
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 723
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 724
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 727
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 729
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method

.method private populateApps()V
    .locals 19

    .line 346
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 347
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v3, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 349
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 350
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 353
    .local v5, "userId":I
    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v6, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 354
    return-void

    .line 356
    :cond_1
    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 358
    .local v6, "restrictionsIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 359
    .local v8, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->getVisibleApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 360
    .local v11, "app":Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 361
    .local v12, "packageName":Ljava/lang/String;
    if-nez v12, :cond_2

    .end local v11
    .end local v12
    goto :goto_0

    .line 362
    .restart local v11
    .restart local v12
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 363
    .local v13, "isSettingsApp":Z
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v0, v14, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    move-object v14, v0

    .line 364
    .local v14, "p":Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-direct {v1, v8, v12}, Lcom/android/settings/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v15

    .line 365
    .local v15, "hasSettings":Z
    if-eqz v13, :cond_3

    .line 366
    invoke-direct {v1, v11, v14}, Lcom/android/settings/users/AppRestrictionsFragment;->addLocationAppRestrictionsPreference(Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 368
    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0, v12, v10}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 369
    goto :goto_0

    .line 371
    :cond_3
    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 373
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    const v0, 0x400040

    :try_start_0
    invoke-interface {v4, v12, v0, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v0

    .line 378
    goto :goto_1

    .line 376
    :catch_0
    move-exception v0

    .line 379
    move-object/from16 v0, v17

    .end local v17
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v0, :cond_4

    .line 380
    goto :goto_0

    .line 382
    :cond_4
    iget-boolean v10, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v10, :cond_5

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 383
    goto :goto_0

    .line 385
    :cond_5
    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    :goto_2
    move-object/from16 v10, v16

    goto :goto_3

    :cond_6
    goto :goto_2

    :goto_3
    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-virtual {v14, v7}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 387
    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    invoke-direct {v1, v12}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 389
    if-eqz v15, :cond_7

    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    move v10, v7

    :goto_4
    invoke-static {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$600(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 390
    invoke-virtual {v14, v7}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 391
    invoke-virtual {v14, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 392
    invoke-virtual {v14, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    invoke-direct {v1, v0, v11}, Lcom/android/settings/users/AppRestrictionsFragment;->getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    iget-boolean v10, v0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v10, :cond_9

    invoke-direct {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_5

    .line 406
    :cond_8
    iget-boolean v10, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v10, :cond_b

    invoke-direct {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 407
    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto :goto_6

    .line 395
    :cond_9
    :goto_5
    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 396
    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 398
    if-nez v15, :cond_a

    .end local v0
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    goto/16 :goto_0

    .line 403
    .restart local v0
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_a
    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v10, :cond_b

    .line 404
    invoke-direct {v1, v12, v14, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 409
    :cond_b
    :goto_6
    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v10, :cond_c

    .line 410
    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 411
    iget-object v10, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v10, v12}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isPackageSelected(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 413
    :cond_c
    const/16 v10, 0x64

    iget-object v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v10, v7

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 414
    iget-object v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v7, v12, v10}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 415
    iget-object v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v14}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 416
    .end local v0
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    nop

    .line 359
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 417
    :cond_d
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 420
    iget-boolean v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v0, :cond_e

    .line 421
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 422
    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 424
    :cond_e
    return-void
.end method

.method private removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 569
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 570
    .local v1, "p":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 571
    .end local v1
    goto :goto_0

    .line 572
    :cond_0
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 573
    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p3, "invokeIfCustom"    # Z

    .line 596
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 597
    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 598
    .local v0, "oldEntries":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v2, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 601
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v6, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 605
    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 472
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 473
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    const/4 v0, 0x1

    return v0

    .line 476
    .end local v1
    :cond_0
    goto :goto_0

    .line 477
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 483
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    instance-of v2, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    move-object v2, v1

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v2, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 481
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v0
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 246
    const/16 v0, 0x61

    return v0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 212
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 213
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 216
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 217
    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    new-instance v2, Landroid/os/UserHandle;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 220
    :cond_1
    const-string v2, "new_user"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    .line 224
    .end local v1
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v1, :cond_3

    .line 225
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 228
    :cond_3
    new-instance v1, Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/users/AppRestrictionsHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 230
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 232
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    .line 238
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v1

    .line 239
    :goto_1
    const v1, 0x7f15001b

    invoke-virtual {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    .line 241
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 242
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 743
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 746
    .local v0, "pref":Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v0, :cond_0

    .line 747
    sget-object v1, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown requestCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 751
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 752
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.intent.extra.restrictions_list"

    .line 754
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 755
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 756
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 758
    invoke-virtual {v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 759
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 760
    invoke-static {v2}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 759
    invoke-virtual {v4, v1, v5, v6}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 761
    :cond_1
    if-eqz v3, :cond_2

    .line 763
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v3, v5}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 767
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_4

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 495
    .local v0, "pref":Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a005e

    if-ne v1, v2, :cond_0

    .line 496
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    goto/16 :goto_0

    .line 497
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 498
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 499
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 502
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v3, v4}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 504
    return-void

    .line 506
    :cond_1
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v1, v5}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 507
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$800(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    .line 510
    invoke-direct {p0, v1, v0, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 512
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 514
    iget-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_3

    .line 515
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 517
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 520
    .end local v0
    .end local v1
    :cond_4
    :goto_0
    return-void
.end method

.method public onDisableUiForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 310
    nop

    .line 311
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 312
    .local v0, "pref":Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    .line 315
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 275
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 286
    invoke-virtual {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 524
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "restrictionKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 530
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 531
    .local v4, "appPref":Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v5

    .line 532
    .local v5, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    if-eqz v5, :cond_1

    .line 533
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/RestrictionEntry;

    .line 534
    .local v7, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 535
    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 554
    goto :goto_0

    .line 548
    :pswitch_0    # 0x4
    move-object v6, p2

    check-cast v6, Ljava/util/Set;

    .line 549
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    .line 550
    .local v8, "selectedValues":[Ljava/lang/String;
    invoke-interface {v6, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 551
    invoke-virtual {v7, v8}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    .line 552
    goto :goto_1

    .line 541
    .end local v6
    .end local v8
    :pswitch_1    # 0x2 0x3
    move-object v6, p1

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    .line 542
    .local v6, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v8

    .line 544
    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v9

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    .line 543
    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 545
    .local v8, "readable":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 546
    goto :goto_1

    .line 537
    .end local v6
    .end local v8
    :pswitch_2    # 0x1
    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 538
    nop

    .line 556
    :goto_1
    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 557
    invoke-static {v5}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 556
    invoke-virtual {v6, v2, v8, v9}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 559
    goto :goto_2

    .line 561
    .end local v7
    :cond_0
    goto :goto_0

    .line 563
    :cond_1
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 565
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_2
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 782
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    move-object v0, p1

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 784
    .local v0, "arp":Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 785
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v2

    .line 787
    .local v3, "newEnabledState":Z
    invoke-virtual {v0, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 788
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v1, v3}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    .line 789
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 790
    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 791
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v1, v3, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 793
    .end local v1
    .end local v3
    :cond_0
    return v2

    .line 795
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 257
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 268
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 269
    :cond_0
    new-instance v2, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    .line 271
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    return-void
.end method
