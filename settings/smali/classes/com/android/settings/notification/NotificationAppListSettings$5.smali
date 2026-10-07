.class Lcom/android/settings/notification/NotificationAppListSettings$5;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppListSettings;->loadAppsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppListSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationAppListSettings;

    .line 350
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppListSettings$5;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppListSettings$5;->this$0:Lcom/android/settings/notification/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppListSettings;->access$800(Lcom/android/settings/notification/NotificationAppListSettings;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12079f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 354
    return-void
.end method
