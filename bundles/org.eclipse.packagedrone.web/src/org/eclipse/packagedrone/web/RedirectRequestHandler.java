/*******************************************************************************
 * Copyright (c) 2015 IBH SYSTEMS GmbH.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBH SYSTEMS GmbH - initial API and implementation
 *******************************************************************************/
package org.eclipse.packagedrone.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RedirectRequestHandler implements RequestHandler
{
    private final String target;

    public RedirectRequestHandler ( final String target )
    {
        this.target = target;
    }

    @Override
    public void process ( final HttpServletRequest request, final HttpServletResponse response ) throws IOException, ServletException
    {
        response.sendRedirect ( this.target );
    }

}
