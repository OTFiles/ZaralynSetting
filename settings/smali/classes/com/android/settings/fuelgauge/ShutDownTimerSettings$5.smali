.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 735
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 738
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->checkUserSettingsShutDownEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$200(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->show(Landroid/app/Fragment;Lcom/android/settings/BeanVariable;Landroid/os/Handler;)V

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$102(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;I)I

    .line 743
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->checkUserSettingsShutDownEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$200(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->show(Landroid/app/Fragment;Lcom/android/settings/BeanVariable;Landroid/os/Handler;)V

    .line 748
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
