/*******************************************************************************
 * Copyright (c) 2016 IBH SYSTEMS GmbH and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBH SYSTEMS GmbH - initial API and implementation
 *******************************************************************************/
package org.eclipse.packagedrone.utils.converter;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * This is a marker annotation for the {@link ConverterManager} that this class
 * supports stringification by use of {@link Object#toString()} and a static
 * {@code valueOf()} method
 */
@Target ( { ElementType.TYPE, ElementType.FIELD } )
@Retention ( RetentionPolicy.RUNTIME )
public @interface Stringify
{
}
