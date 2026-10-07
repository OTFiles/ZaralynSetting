.class public Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPattern;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "extra_require_password"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setChallenge(J)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 3
    .param p1, "challenge"    # J

    .line 115
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 117
    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2
    .param p1, "forFingerprint"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2
    .param p1, "userId"    # I

    .line 110
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    return-object p0
.end method
