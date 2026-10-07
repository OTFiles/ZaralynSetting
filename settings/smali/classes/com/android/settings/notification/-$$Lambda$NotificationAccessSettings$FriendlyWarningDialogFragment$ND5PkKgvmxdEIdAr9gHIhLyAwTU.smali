.class public final synthetic Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/NotificationAccessSettings;

.field private final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->lambda$onCreateDialog$0(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V

    return-void
.end method
