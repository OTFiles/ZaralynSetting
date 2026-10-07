.class Lcom/android/settings/ExportLogFragment$3;
.super Ljava/lang/Object;
.source "ExportLogFragment.java"

# interfaces
.implements Lcom/android/settings/SendEmailThread$OnSendEmailEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ExportLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ExportLogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ExportLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ExportLogFragment;

    .line 435
    iput-object p1, p0, Lcom/android/settings/ExportLogFragment$3;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "emailId"    # Ljava/lang/String;
    .param p2, "emailTitle"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$3;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-static {v0}, Lcom/android/settings/ExportLogFragment;->access$100(Lcom/android/settings/ExportLogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ExportLogFragment$3$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/ExportLogFragment$3$1;-><init>(Lcom/android/settings/ExportLogFragment$3;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    return-void
.end method
