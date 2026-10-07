.class Lcom/android/settings/applications/AppStorageSettings$2;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppStorageSettings;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/AppStorageSettings;

    .line 649
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$2;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 651
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$2;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 653
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$2;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/applications/AppStorageSettings;->setIntentAndFinish(ZZ)V

    .line 654
    return-void
.end method
