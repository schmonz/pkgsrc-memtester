# $NetBSD: Makefile,v 1.32 2023/12/23 10:10:11 zafer Exp $
#

DISTNAME=		memtester-4.6.0
CATEGORIES=		sysutils
MASTER_SITES=		${HOMEPAGE}old-versions/

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		https://pyropus.ca./software/memtester/
COMMENT=		Utility for testing the memory subsystem for faults
LICENSE=		gnu-gpl-v2

DJB_MAKE_TARGETS=	NO

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man8 share/doc/memtester

do-install:
	cd ${WRKSRC} &&							\
	${INSTALL_PROGRAM} memtester ${DESTDIR}${PREFIX}/bin;		\
	${INSTALL_MAN} memtester.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8; \
	${INSTALL_DATA} README.tests ${DESTDIR}${PREFIX}/share/doc/memtester

.include "../../mk/djbware.mk"
.include "../../mk/bsd.pkg.mk"
