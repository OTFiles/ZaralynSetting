.class Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "DiscoverableFooterPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    .line 70
    iput-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-static {v1, v0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->access$000(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;I)V

    .line 78
    .end local v0
    :cond_0
    return-void
.end method
