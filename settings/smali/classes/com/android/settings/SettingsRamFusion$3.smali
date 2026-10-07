.class Lcom/android/settings/SettingsRamFusion$3;
.super Ljava/lang/Object;
.source "SettingsRamFusion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsRamFusion;->onclickEvent(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsRamFusion;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsRamFusion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsRamFusion;

    .line 200
    iput-object p1, p0, Lcom/android/settings/SettingsRamFusion$3;->this$0:Lcom/android/settings/SettingsRamFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    return-void
.end method
