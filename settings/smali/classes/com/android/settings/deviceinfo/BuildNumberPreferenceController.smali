.class public Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BuildNumberPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;

.field private final mFragment:Landroid/app/Fragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fragment"    # Landroid/app/Fragment;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 73
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    .line 74
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 75
    if-eqz p4, :cond_0

    .line 76
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 78
    :cond_0
    return-void
.end method

.method private enableDevelopmentSettings()V
    .locals 3

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 233
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120ce8

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 240
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 83
    const-string v0, "build_number"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 84
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 90
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const v2, 0x7f12051a

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 92
    .end local v1
    :cond_0
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "build_number"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "build_number"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    return v1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/16 v2, 0x34f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 127
    return v1

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 134
    return v1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v3, "no_debugging_features"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 141
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_4

    .line 142
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    .line 144
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 145
    .local v3, "requestDebugFeatures":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 147
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_4

    .line 148
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    return v1

    .line 153
    .end local v0
    .end local v3
    .end local v4
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 160
    return v1

    .line 163
    :cond_6
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/16 v3, 0x350

    const/4 v4, 0x1

    if-lez v0, :cond_b

    .line 164
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 165
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez v0, :cond_8

    .line 167
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 168
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 174
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez v0, :cond_7

    .line 175
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v6, v4, [Landroid/util/Pair;

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 180
    iget-boolean v8, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    xor-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 179
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    aput-object v7, v6, v1

    .line 177
    invoke-virtual {v0, v5, v2, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 181
    :cond_8
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v0, v5, :cond_a

    .line 183
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100036

    iget v7, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    new-array v8, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 189
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    .line 187
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v6, v4, [Landroid/util/Pair;

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 195
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v6, v1

    .line 193
    invoke-virtual {v0, v5, v2, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_1

    .line 197
    :cond_b
    iget v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-gez v0, :cond_d

    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 201
    :cond_c
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120ce7

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 203
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v6, v4, [Landroid/util/Pair;

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 207
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 206
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v6, v1

    .line 204
    invoke-virtual {v0, v5, v2, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 209
    :cond_d
    :goto_1
    return v4
.end method

.method public isAvailable()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 218
    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    .line 219
    return v0

    .line 221
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    .line 224
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_debugging_features"

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 106
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 108
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_debugging_features"

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 108
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 113
    return-void
.end method
