.class Lcom/android/settings/SettingsOtherMoreFuns$1;
.super Ljava/lang/Object;
.source "SettingsOtherMoreFuns.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsOtherMoreFuns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsOtherMoreFuns;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsOtherMoreFuns;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsOtherMoreFuns;

    .line 94
    iput-object p1, p0, Lcom/android/settings/SettingsOtherMoreFuns$1;->this$0:Lcom/android/settings/SettingsOtherMoreFuns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 97
    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns$1;->this$0:Lcom/android/settings/SettingsOtherMoreFuns;

    invoke-virtual {v0}, Lcom/android/settings/SettingsOtherMoreFuns;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings/SettingsOtherMoreFuns$1;->this$0:Lcom/android/settings/SettingsOtherMoreFuns;

    invoke-static {v1}, Lcom/android/settings/SettingsOtherMoreFuns;->access$000(Lcom/android/settings/SettingsOtherMoreFuns;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/settings/SettingsOtherMoreFuns$1;->this$0:Lcom/android/settings/SettingsOtherMoreFuns;

    invoke-static {v1}, Lcom/android/settings/SettingsOtherMoreFuns;->access$100(Lcom/android/settings/SettingsOtherMoreFuns;)Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    return v1

    .line 105
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
