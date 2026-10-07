.class public Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
.super Ljava/lang/Object;
.source "EnterprisePrivacyFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;Landroid/net/ConnectivityManager;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p3, "pm"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p4, "um"    # Landroid/os/UserManager;
    .param p5, "cm"    # Landroid/net/ConnectivityManager;
    .param p6, "resources"    # Landroid/content/res/Resources;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 57
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 58
    iput-object p4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    .line 59
    iput-object p5, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Landroid/net/ConnectivityManager;

    .line 60
    iput-object p6, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    .line 61
    return-void
.end method

.method private getManagedProfileUserId()I
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 73
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    return v0

    .line 76
    .end local v1
    :cond_0
    goto :goto_0

    .line 77
    :cond_1
    const/16 v0, -0x2710

    return v0
.end method


# virtual methods
.method public areBackupsMandatory()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeviceOwnerDisclosure()Ljava/lang/CharSequence;
    .locals 6

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 102
    .local v0, "disclosure":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 103
    .local v1, "organizationName":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 104
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f120570

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f12056e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f12056f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f120798

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;

    iget-object v5, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 112
    return-object v0
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 88
    .local v0, "organizationName":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImeLabelIfOwnerSet()Ljava/lang/String;
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return-object v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_input_method"

    sget v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 193
    return-object v1

    .line 196
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v3, 0x0

    sget v4, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 197
    invoke-virtual {v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method public getLastBugReportRequestTime()Ljava/util/Date;
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0

    .line 124
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2
.end method

.method public getLastNetworkLogRetrievalTime()Ljava/util/Date;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    .line 130
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2
.end method

.method public getLastSecurityLogRetrievalTime()Ljava/util/Date;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    .line 118
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2
.end method

.method public getMaximumFailedPasswordsBeforeWipeInCurrentUser()I
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 163
    .local v0, "owner":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 166
    :cond_0
    if-nez v0, :cond_1

    .line 167
    const/4 v1, 0x0

    return v1

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method public getMaximumFailedPasswordsBeforeWipeInManagedProfile()I
    .locals 3

    .line 174
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    .line 175
    .local v0, "userId":I
    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 179
    .local v2, "profileOwner":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 180
    return v1

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method public getNumberOfActiveDeviceAdminsForCurrentUserAndManagedProfile()I
    .locals 5

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "activeAdmins":I
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 229
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 230
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 231
    .local v3, "activeAdminsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_0

    .line 232
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 234
    .end local v2
    .end local v3
    :cond_0
    goto :goto_0

    .line 235
    :cond_1
    return v0
.end method

.method public getNumberOfOwnerInstalledCaCertsForCurrentUser()I
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/os/UserHandle;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    return v1

    .line 209
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public getNumberOfOwnerInstalledCaCertsForManagedProfile()I
    .locals 4

    .line 214
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    .line 215
    .local v0, "userId":I
    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 216
    return v1

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 219
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 220
    return v1

    .line 222
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public hasDeviceOwner()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isAlwaysOnVpnSetInCurrentUser()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Landroid/net/ConnectivityManager;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    return v0
.end method

.method public isAlwaysOnVpnSetInManagedProfile()Z
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    .line 151
    .local v0, "managedProfileUserId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Landroid/net/ConnectivityManager;

    .line 152
    invoke-static {v1, v0}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Landroid/net/ConnectivityManager;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 151
    :goto_0
    return v1
.end method

.method public isGlobalHttpProxySet()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInCompMode()Z
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkLoggingEnabled()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isSecurityLoggingEnabled()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method
