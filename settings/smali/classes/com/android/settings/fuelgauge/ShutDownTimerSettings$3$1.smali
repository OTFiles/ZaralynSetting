.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;

.field final synthetic val$strSummary:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;

    .line 683
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;->this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;->val$strSummary:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;->this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1000(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;->this$1:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1000(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;->val$strSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 689
    :cond_0
    return-void
.end method
