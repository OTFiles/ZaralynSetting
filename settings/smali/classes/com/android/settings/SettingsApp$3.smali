.class Lcom/android/settings/SettingsApp$3;
.super Ljava/lang/Object;
.source "SettingsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsApp;

.field final synthetic val$msg:Ljava/lang/CharSequence;

.field final synthetic val$showtime:I


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsApp;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsApp;

    .line 342
    iput-object p1, p0, Lcom/android/settings/SettingsApp$3;->this$0:Lcom/android/settings/SettingsApp;

    iput-object p2, p0, Lcom/android/settings/SettingsApp$3;->val$msg:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/settings/SettingsApp$3;->val$showtime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/android/settings/SettingsApp$3;->this$0:Lcom/android/settings/SettingsApp;

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->hideAppToast()V

    .line 346
    iget-object v0, p0, Lcom/android/settings/SettingsApp$3;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {}, Lcom/android/settings/SettingsApp;->access$300()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsApp$3;->val$msg:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/SettingsApp$3;->val$showtime:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsApp;->access$202(Lcom/android/settings/SettingsApp;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 347
    iget-object v0, p0, Lcom/android/settings/SettingsApp$3;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {v0}, Lcom/android/settings/SettingsApp;->access$200(Lcom/android/settings/SettingsApp;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApp;->access$300()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x5

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/SettingsApp$3;->this$0:Lcom/android/settings/SettingsApp;

    invoke-static {v0}, Lcom/android/settings/SettingsApp;->access$200(Lcom/android/settings/SettingsApp;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 349
    return-void
.end method
