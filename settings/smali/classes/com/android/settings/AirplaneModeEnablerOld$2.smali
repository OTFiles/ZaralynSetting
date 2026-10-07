.class Lcom/android/settings/AirplaneModeEnablerOld$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnablerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnablerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnablerOld;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnablerOld;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/AirplaneModeEnablerOld;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerOld$2;->this$0:Lcom/android/settings/AirplaneModeEnablerOld;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 60
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld$2;->this$0:Lcom/android/settings/AirplaneModeEnablerOld;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnablerOld;->access$000(Lcom/android/settings/AirplaneModeEnablerOld;)V

    .line 61
    return-void
.end method
