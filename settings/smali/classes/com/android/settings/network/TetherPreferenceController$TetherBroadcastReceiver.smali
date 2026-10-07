.class Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/network/TetherPreferenceController;

    .line 277
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummary()V

    .line 282
    return-void
.end method
