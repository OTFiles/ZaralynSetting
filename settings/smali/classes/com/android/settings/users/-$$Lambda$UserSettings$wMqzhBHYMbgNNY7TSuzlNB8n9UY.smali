.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;->f$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;->f$1:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;->f$0:Lcom/android/settings/users/UserSettings;

    iget v1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/settings/users/UserSettings;->lambda$updateUserList$0(Lcom/android/settings/users/UserSettings;ILandroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
