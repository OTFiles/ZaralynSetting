.class Lcom/android/settings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MasterClearConfirm;

    .line 85
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 88
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 92
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$100(Lcom/android/settings/MasterClearConfirm;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/settings/MasterClearConfirm;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/android/settings/MasterClearConfirm;->access$200(Lcom/android/settings/MasterClearConfirm;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->readboyPromptDoMasterClearOfSomePad()V

    .line 100
    :cond_2
    return-void
.end method
