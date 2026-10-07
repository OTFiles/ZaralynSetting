.class public Lcom/android/settings/database/LauncherStatus;
.super Ljava/lang/Object;
.source "LauncherStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ec8f8475f3a6dacL


# instance fields
.field public cid:I

.field public laus_class:Ljava/lang/String;

.field public laus_extime:Ljava/lang/String;

.field public laus_extra:Ljava/lang/String;

.field public laus_more:Ljava/lang/String;

.field public laus_now_status:I

.field public laus_pkg:Ljava/lang/String;

.field public laus_req_status:I

.field public pid:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/database/LauncherStatus;->cid:I

    .line 44
    const/16 v0, 0x2712

    iput v0, p0, Lcom/android/settings/database/LauncherStatus;->pid:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/database/LauncherStatus;->uid:I

    .line 46
    iput v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    .line 47
    iput v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    .line 48
    return-void
.end method

.method public static sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "keyWord"    # Ljava/lang/String;
    .param p1, "bSqlite"    # Z

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 p0, 0x0

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/database/LauncherStatus;->sqliteEscapeAny(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sqliteEscapeAny(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "keyWord"    # Ljava/lang/String;
    .param p1, "bSqlite"    # Z

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 111
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 112
    const-string v0, "["

    const-string v1, "/["

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 113
    const-string v0, "]"

    const-string v1, "/]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 114
    const-string v0, "%"

    const-string v1, "/%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 115
    const-string v0, "&"

    const-string v1, "/&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 116
    const-string v0, "_"

    const-string v1, "/_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 117
    const-string v0, "("

    const-string v1, "/("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 118
    const-string v0, ")"

    const-string v1, "/)"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "//"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 121
    const-string v0, "\'\'"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string v0, "/["

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 123
    const-string v0, "/]"

    const-string v1, "]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 124
    const-string v0, "/%"

    const-string v1, "%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v0, "/&"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 126
    const-string v0, "/_"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 127
    const-string v0, "/("

    const-string v1, "("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string v0, "/)"

    const-string v1, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 131
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public reinitLauncherNowStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;
    .locals 0
    .param p1, "laus_pkg"    # Ljava/lang/String;
    .param p2, "laus_class"    # Ljava/lang/String;
    .param p3, "laus_now_status"    # I

    .line 84
    iput-object p1, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    .line 87
    return-object p0
.end method

.method public reinitLauncherReqStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settings/database/LauncherStatus;
    .locals 0
    .param p1, "laus_pkg"    # Ljava/lang/String;
    .param p2, "laus_class"    # Ljava/lang/String;
    .param p3, "laus_req_status"    # I

    .line 70
    iput-object p1, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    .line 72
    iput p3, p0, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    .line 73
    return-object p0
.end method

.method public sqliteStandard(Z)V
    .locals 1
    .param p1, "bEscape"    # Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/LauncherStatus;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/LauncherStatus;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_more:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/LauncherStatus;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_more:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_extra:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/LauncherStatus;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_extra:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_extime:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/LauncherStatus;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/LauncherStatus;->laus_extime:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/database/LauncherStatus;->laus_pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/android/settings/database/LauncherStatus;->laus_class:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/settings/database/LauncherStatus;->laus_req_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/android/settings/database/LauncherStatus;->laus_now_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
