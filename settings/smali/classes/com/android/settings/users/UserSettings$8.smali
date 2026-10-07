.class Lcom/android/settings/users/UserSettings$8;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/users/UserSettings;

    .line 597
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$8;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 600
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$8;->this$0:Lcom/android/settings/users/UserSettings;

    if-nez p2, :cond_0

    .line 601
    const/4 v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    const/4 v1, 0x2

    .line 600
    :goto_0
    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1200(Lcom/android/settings/users/UserSettings;I)V

    .line 603
    return-void
.end method
