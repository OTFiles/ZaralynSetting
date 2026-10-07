.class public Lcom/android/settings/database/MessageCenter;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x324dea24fbbe495L


# instance fields
.field public cid:I

.field public msgc_content:Ljava/lang/String;

.field public msgc_del:Z

.field public msgc_face:Ljava/lang/String;

.field public msgc_full:I

.field public msgc_time:Ljava/lang/String;

.field public msgc_title:Ljava/lang/String;

.field public msgc_vid:Ljava/lang/String;

.field public pid:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "keyWord"    # Ljava/lang/String;
    .param p1, "bSqlite"    # Z

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 p0, 0x0

    .line 100
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/database/MessageCenter;->sqliteEscapeAny(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sqliteEscapeAny(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "keyWord"    # Ljava/lang/String;
    .param p1, "bSqlite"    # Z

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 68
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 69
    const-string v0, "["

    const-string v1, "/["

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 70
    const-string v0, "]"

    const-string v1, "/]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 71
    const-string v0, "%"

    const-string v1, "/%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 72
    const-string v0, "&"

    const-string v1, "/&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 73
    const-string v0, "_"

    const-string v1, "/_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 74
    const-string v0, "("

    const-string v1, "/("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 75
    const-string v0, ")"

    const-string v1, "/)"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 77
    :cond_0
    const-string v0, "//"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 78
    const-string v0, "\'\'"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 79
    const-string v0, "/["

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 80
    const-string v0, "/]"

    const-string v1, "]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 81
    const-string v0, "/%"

    const-string v1, "%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 82
    const-string v0, "/&"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 83
    const-string v0, "/_"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 84
    const-string v0, "/("

    const-string v1, "("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 85
    const-string v0, "/)"

    const-string v1, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 88
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public sqliteStandard(Z)V
    .locals 1
    .param p1, "bEscape"    # Z

    .line 52
    iget-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_time:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/MessageCenter;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_time:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_title:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/MessageCenter;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_title:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/MessageCenter;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_content:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_face:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/database/MessageCenter;->sqliteEscape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/database/MessageCenter;->msgc_face:Ljava/lang/String;

    .line 56
    return-void
.end method
