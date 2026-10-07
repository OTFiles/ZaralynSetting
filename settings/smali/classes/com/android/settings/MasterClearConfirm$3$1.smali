.class Lcom/android/settings/MasterClearConfirm$3$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClearConfirm$3;->propertyChange(Ljava/beans/PropertyChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MasterClearConfirm$3;

.field final synthetic val$DialogResult:I


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/MasterClearConfirm$3;

    .line 334
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$3$1;->this$1:Lcom/android/settings/MasterClearConfirm$3;

    iput p2, p0, Lcom/android/settings/MasterClearConfirm$3$1;->val$DialogResult:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$3$1;->this$1:Lcom/android/settings/MasterClearConfirm$3;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$3;->this$0:Lcom/android/settings/MasterClearConfirm;

    iget v1, p0, Lcom/android/settings/MasterClearConfirm$3$1;->val$DialogResult:I

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settings/MasterClearConfirm;->onActivityResult(IILandroid/content/Intent;)V

    .line 338
    return-void
.end method
