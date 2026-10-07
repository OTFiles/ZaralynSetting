.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


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

    .line 447
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 4
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 450
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$200(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2$1;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    return-void
.end method
