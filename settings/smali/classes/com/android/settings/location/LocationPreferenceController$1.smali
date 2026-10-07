.class Lcom/android/settings/location/LocationPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/LocationPreferenceController;

    .line 51
    iput-object p1, p0, Lcom/android/settings/location/LocationPreferenceController$1;->this$0:Lcom/android/settings/location/LocationPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/location/LocationPreferenceController$1;->this$0:Lcom/android/settings/location/LocationPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationPreferenceController;->updateSummary()V

    .line 57
    :cond_0
    return-void
.end method
