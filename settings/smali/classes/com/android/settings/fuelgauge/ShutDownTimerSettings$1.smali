.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 141
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->checkUserSettingsShutDownEnable()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$000(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    const/16 v2, 0x271a

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$102(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;I)I

    .line 149
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$000(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_1
    :goto_0
    return-void
.end method
