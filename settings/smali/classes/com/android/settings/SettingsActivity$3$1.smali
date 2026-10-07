.class Lcom/android/settings/SettingsActivity$3$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsActivity$3;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsActivity$3;

    .line 713
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$3$1;->this$1:Lcom/android/settings/SettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 716
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 717
    return-void
.end method
