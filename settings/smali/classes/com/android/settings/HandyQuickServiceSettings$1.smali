.class Lcom/android/settings/HandyQuickServiceSettings$1;
.super Ljava/lang/Object;
.source "HandyQuickServiceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HandyQuickServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HandyQuickServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HandyQuickServiceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/HandyQuickServiceSettings;

    .line 175
    iput-object p1, p0, Lcom/android/settings/HandyQuickServiceSettings$1;->this$0:Lcom/android/settings/HandyQuickServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 178
    iget-object v0, p0, Lcom/android/settings/HandyQuickServiceSettings$1;->this$0:Lcom/android/settings/HandyQuickServiceSettings;

    invoke-virtual {v0}, Lcom/android/settings/HandyQuickServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 180
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const-string v2, "com.readboy.feedback"

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.readboy.feedback"

    const-string v2, "com.readboy.feedback.activity.WebviewActivity"

    .line 181
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isActivityExsistByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const-string v2, "com.dream.guide"

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const-string v2, "com.dream.guide"

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsApp;->openAppStore(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 182
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const-string v2, "com.readboy.feedback"

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsApp;->openAppStore(Ljava/lang/String;Landroid/content/Context;)V

    .line 187
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method
