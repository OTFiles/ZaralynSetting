.class Lcom/android/settings/SettingsApp$5;
.super Ljava/lang/Object;
.source "SettingsApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsApp;->showPasswordDialog(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsApp;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsApp;

    .line 793
    iput-object p1, p0, Lcom/android/settings/SettingsApp$5;->this$0:Lcom/android/settings/SettingsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 796
    iget-object v0, p0, Lcom/android/settings/SettingsApp$5;->this$0:Lcom/android/settings/SettingsApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SettingsApp;->access$402(Lcom/android/settings/SettingsApp;Ljava/util/Date;)Ljava/util/Date;

    .line 797
    iget-object v0, p0, Lcom/android/settings/SettingsApp$5;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {v0}, Lcom/android/settings/SettingsApp;->access$500(Lcom/android/settings/SettingsApp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 798
    return-void
.end method
