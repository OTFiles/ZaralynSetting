.class public final synthetic Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/AppNotificationSettings;

.field private final synthetic f$1:Landroid/app/NotificationChannelGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;->f$0:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;->f$1:Landroid/app/NotificationChannelGroup;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;->f$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;->f$1:Landroid/app/NotificationChannelGroup;

    invoke-static {v0, v1, p1}, Lcom/android/settings/notification/AppNotificationSettings;->lambda$populateGroupToggle$0(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
