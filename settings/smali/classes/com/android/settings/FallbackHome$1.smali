.class Lcom/android/settings/FallbackHome$1;
.super Landroid/content/BroadcastReceiver;
.source "FallbackHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FallbackHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FallbackHome;


# direct methods
.method constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/FallbackHome;

    .line 103
    iput-object p1, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/android/settings/FallbackHome$1;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {v0}, Lcom/android/settings/FallbackHome;->access$000(Lcom/android/settings/FallbackHome;)V

    .line 107
    return-void
.end method
