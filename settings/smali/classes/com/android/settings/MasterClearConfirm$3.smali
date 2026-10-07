.class Lcom/android/settings/MasterClearConfirm$3;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


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

    .line 327
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$3;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 6
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 330
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0}, Lcom/android/settings/BeanVariable;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0}, Lcom/android/settings/BeanVariable;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 332
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "DialogResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const-string v1, "DialogResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 334
    .local v1, "DialogResult":I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/MasterClearConfirm$3$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/MasterClearConfirm$3$1;-><init>(Lcom/android/settings/MasterClearConfirm$3;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method
