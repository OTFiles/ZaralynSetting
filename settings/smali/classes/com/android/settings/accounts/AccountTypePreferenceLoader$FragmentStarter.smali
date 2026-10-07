.class Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountTypePreferenceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentStarter"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mTitleRes:I

.field final synthetic this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Ljava/lang/String;I)V
    .locals 0
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "title"    # I

    .line 227
    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    .line 229
    iput p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mTitleRes:I

    .line 230
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 234
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/support/v14/preference/PreferenceFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/support/v14/preference/PreferenceFragment;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    goto :goto_0

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "metricsCategory":I
    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mTitleRes:I

    .line 238
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 245
    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/support/v14/preference/PreferenceFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 250
    .end local v1
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
